Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E738081D
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 12:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644928585;
	h=To:Subject:From:Message-Id:Date;
	bh=AzRbzztem6q9XKCv8Q9OdoDH35Pzfp8+f+PalKUo89g=;
	b=IcRw/wzUsxMcHtGHCOu+HXLw99Js/PzwmfAq1CZCFC1r31c7bjShYmOTVIIQ24tU
	rw7pW4QJRsXfDgV0+Sas+DoPsS6URFBKo1Ln9JY0zkKpRlz2Qpt01Y/9xXwsJjuuD89
	nc4T7fhlAzNhhHI8j3nKk4z1sBv519tdw+3QagPw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644928585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AzRbzztem6q9XKCv8Q9OdoDH35Pzfp8+f+PalKUo89g=;
	b=BQBIorUTzBa4ki56Bexr/UoCTEOF99w6e7hZ/f7uVwNozFug7wppMNXtKwlfGxQ5
	ivN8NJHKG36BjhfaynCaAH4kWz3HQZE/kmbu1JliD1pA/z7hp63cf3B2mDY3J554C3J
	WtbtZKWD15rmr2fHMNnU+gVQiOliJebUgjXjF5q4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efd624c58-cd0e81e9-9ce5-4d27-85aa-8bb462d25ff3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dcbc5e9e4606c9d5080450594ed8d563db00c236d87499c8de670cdf9c711e20
Date: Tue, 15 Feb 2022 12:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644928584
