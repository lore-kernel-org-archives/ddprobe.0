Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B55D185B
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 15:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650469078;
	h=To:Subject:From:Message-Id:Date;
	bh=H03Y+86vo1epvrWsvgwxGzRtlKJc+us/4bcZmOomo2k=;
	b=QbbA+fw0azNH5ICNvvNt76FFBbLHjgoa2BSnpabe+ifSTQsDoitrvjxcM2mOe7bT
	2vdY7mAOw0b+c2IKbURpjHODZ9IurGbxp0SMih5Qs7Ozc1Wzxl87mysiHWCiMAsM0xq
	EY6INOGRYWmWIuUoh5/L7GHPJuxPb4ck+mILzAtg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650469078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=H03Y+86vo1epvrWsvgwxGzRtlKJc+us/4bcZmOomo2k=;
	b=QFbLPdAdpj69dCXweCE9IgBZ3wsf5U07R72NKGv4mhy1Zfrtf7npUcK1NMVHu8LC
	4G7UBuHxG0aCxrdtTw1fSDee/N1jAFNBv4EZiV8wTd3UqpE8PQ9gpENV+nNAmhkcrO5
	ipfWZpgxj5uvx9HVdy5GTiK9X8wiJ1MyJPNXdocc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180479f852e-7857c26b-f2c3-417a-8f53-280ab3f9e895-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 847b18af29360c19587e4170ba3fc0faffc919c73f7a7826077391a702973c17
Date: Wed, 20 Apr 2022 15:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650469078
