Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF5F29A0
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 15:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655394299;
	h=To:Subject:From:Message-Id:Date;
	bh=5i7+iZ7o7MFitHz91zm9lFImCyvi5xsVEx7Ethlplpw=;
	b=iYABxwKD0h83+HG+P9cCM2dkyljlJTAMKUVmfOkfa5oamiHDF6R8kVcDq/ViP6Wl
	u7mWP6/axGN7vmgtjyVDYCGZrt3p7y+swx3++rlgo+FthIEi/RV8h6K4GM7CseKwiHn
	1jcaRT1r3laXac4QSO3f07dqh7rI7nR8gKEa8WJM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655394299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5i7+iZ7o7MFitHz91zm9lFImCyvi5xsVEx7Ethlplpw=;
	b=hjnRXItd7yqqMXaAlSFVtz72sGPcN/zeAfxMpaTgJVL13ENLygx84FdEA01YaGYs
	hgLnebiqQGBFISl0IVSboH7S5c/Kp/7dd0AcD2cMwUjaa4PNsF5UBAtcBy+Mtl0zMbK
	0NExlTofnNuwE+5gxHBvPdzddQ8Qu9/a9sMhSsmw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816d306d4e-fa2cdad3-71ac-48d7-b261-663f0f63457a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5a49318e8384e44c52717a51fb48f3ee50cbcc43729dc297a779845dfdb14c82
Date: Thu, 16 Jun 2022 15:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655394299
