Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29CAC2F33
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 20:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657572412;
	h=To:Subject:From:Message-Id:Date;
	bh=IkKUHMYb1bIOJl2axrIrgxREYZscFkxBFL/LfRsDdcI=;
	b=MzKZINcZ9TEXEUidDquwbw3ws0936ErtXG3+BWM79zbTSIkfPL0qHkmRnx2yQLOQ
	k7/nggdWfOlTOm9cKBS5+hMytFx6YNMyV0sSa1XvJzB6neCAhvv/mmwHPsyYi8unMK7
	AtjAic1ycJtaquvooK8zn2bDTq79ddcKcl1sO87E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657572412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IkKUHMYb1bIOJl2axrIrgxREYZscFkxBFL/LfRsDdcI=;
	b=WXAgTdyvShE3Sgjgqk6D42EyvrMNPLHd4R+vd4YAsJIlnRB4+NCidW5BNhN8/AIZ
	Rd/In6mTgobWUnMANfHg1DJlkZYTlIDh27anV4PQttG68c/RjU21jLMurlT1SQWSx83
	ZpOAFMM/hJrUwJJE3QCD9v9IPzao1WMu6Y8PqcqA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ef03cbc6-37c70a19-a46e-44d2-a0bc-84436ca55956-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b720a1b1564e76bdd805eccef5a200701e69b5fb36cf65f1a233d065157dc21d
Date: Mon, 11 Jul 2022 20:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657572412
