Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B41F7B
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660852852;
	h=To:Subject:From:Message-Id:Date;
	bh=fUbpHcHecMuSRN4gHa4Nuf71YZBo2JNNu2HD6n8nv44=;
	b=A29z1nmnsLKTtjeDybaej3qA9wyc+yfQHHPyc5w0Xd88/SRqwRsYPvsh25b4RIGe
	SFJpkX2B1DfZCHTr6aSeGapcMlwK7AbByrNaP78fnvpNxjPfHZ1OQepNSK17C5Yy8wd
	Fflu8/YQ5qZ1/nZHmTTWNnzrNHg0/XKwD4NQSvug=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660852852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fUbpHcHecMuSRN4gHa4Nuf71YZBo2JNNu2HD6n8nv44=;
	b=OZakugNBseprLcjPR2nH0V20XT390hJtGEuWLNNWUj9n4DQPLPztvAHqiWfdK8CU
	Fj1CXMZ7wXgsF6Roh5s5KurcM1MFvhhLTYaWAF22iRHWAubFMRbsu0OU3Aog3+LUrRj
	Cu+9ipGlJ76YAcQzVBvYL34HXLJGjnht59H0vgus=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b28b5775-d673b3be-59e3-46a0-91bd-7ba6705aec86-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 644ccd15d2c6be5d7be2a20ca730ad3bf50a5eab19a89b054608b076868ac824
Date: Thu, 18 Aug 2022 20:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660852852
