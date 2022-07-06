Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17287258B
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 22:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657147612;
	h=To:Subject:From:Message-Id:Date;
	bh=NDetr5VrRybiPOByPBddNSr/U8Bp3YqXRtMgWQ1W2Us=;
	b=bGP90cHQ0vx3D/m13qKEfLFqS1fbT2tgfsa8Nr/DRO8/GZh4TOks3gcYVjjUwEhj
	3xFhbPw8DYLZy+dY0S12eSkjtxssRhtKpEJ8fK9jVd03++LkohdBvXRG/xJl0+7NXcd
	gXRChpZjXr9bECHPrK44TdvT352QTCC7VGvOjueE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657147612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NDetr5VrRybiPOByPBddNSr/U8Bp3YqXRtMgWQ1W2Us=;
	b=CGpQE8HACRtRlOGTn6HmUBB3J4mytmBEL1aBc22+ShbceSZSNrh9d5WqqBACIg6M
	1JHCQp+lSMxiuRIzV5k5KjGD1TxeoVwcRbbJNbUokRSZdze3MUAMmt1HMPltFE4ox2R
	nMlhuAJyeoRHjxVm6FcOeL72xy80yIBPEDITj2jU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d5b1dc88-4678f095-dfdd-403d-8f5a-a61ba1a620a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2ea020af043ea75f7b09647210dfdf20e8fef3867e11023762c9a46a154066cc
Date: Wed, 6 Jul 2022 22:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657147612
