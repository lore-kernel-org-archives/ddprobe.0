Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EB935A1F
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 19:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646941885;
	h=To:Subject:From:Message-Id:Date;
	bh=mt6rORn9qwSoYNV5v29rT63En72y7ehgQaJvs8EPyCs=;
	b=SJpHLRqhKpgDpXJ1IfoeGpyz9fdzKb0nJ6lLH7rtFJ5oSkZn9kSilCEw+Got4MX7
	aoFZRmxJCqi5CeDhnWbyCe/16g8m91cXTe0jVYm0M1AOoDeKfmocSTsCAYCqL5eXlKH
	RW1MoAwiPbUSZtcYhJchuLbEtaM7woNR8Ejaj7EE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646941885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mt6rORn9qwSoYNV5v29rT63En72y7ehgQaJvs8EPyCs=;
	b=J4C6cgxcpWbcBr84KR9F7LVtv2Kh+2uKQMhoX8Vdv7bQ6nu7HnsLv3jfysgusW19
	T4/G+qzDuaN7Zo5WSYtuwbn5FmSpkwLI1+L07Uu+f4fYYBtY9g0LI1V9Y3DivZnKXWY
	utBNTg3nEBzrK/oE2TitJc+HvxBEWo9tSR7NGXok=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7562d16a-f4c995a9-f7f0-49e4-ba7f-8c225544962c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a15d2f85014073d4a2e8d18bf840abccbb5e3eec7595a9f1636be3b6214b140c
Date: Thu, 10 Mar 2022 19:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646941884
