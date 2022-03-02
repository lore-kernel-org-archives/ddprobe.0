Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B6203FE3
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 17:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646242284;
	h=To:Subject:From:Message-Id:Date;
	bh=mRUTb3J+blpsZvPg9a9HUQzfZOuHn3whxNWgvQ9g++8=;
	b=idK/iGOsKO/wDgyc2gqg6C5NL+gFAXOow/S61cNZtvtR+pki18qai+UtuvblLB1H
	JOG3/zzir9rm8N6rRMeIb0pMBqwK6geKXweL6yKhEXhM6nRWrgtM3u7R7N1DDwPj0k6
	1b7n9Wsx3jUPVIFsKV7wkKgSlyZFltsckX3eBWgo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646242284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mRUTb3J+blpsZvPg9a9HUQzfZOuHn3whxNWgvQ9g++8=;
	b=FTZ4Epe1sBXTFlQjMinA7gIc7/4uYA3zOz/kVNv01JFRvdQAd3ivcwjo63XBUr6e
	4yfT3HVvYXWr82t+Dce/WhLFsYYadbTxsJlxn/l+npjjFys4QkJYBuR2vdEbrxRK9yf
	1vJlIJ5fq5dy6FsWgm7raZcWKTOXgXLWztnn1ciw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4bafc4e1-d8620daa-79e0-45f5-a208-58becdefca5a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c6503dfcf24befb1b115a47c71a8c7b5f75dee040165ea60f73a75805f4821f8
Date: Wed, 2 Mar 2022 17:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646242284
