Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD02238F
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 06:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658730412;
	h=To:Subject:From:Message-Id:Date;
	bh=ppNPWnwo0sIT4OgGliJq06tW9s57vR/2seMU78Fnb2A=;
	b=JqknLQYAeLVKv6y9Ff9bAcwOMbfQss7B3mRQ+LUP2aVvg4rgE8O9IcVVRIwa+iDt
	Mu7juTQ9lL2xCzg0bTZxhBVi0NolOjQCeV9MbPraDKbknNr+DmDdB07/+tqeqmREsKE
	RwoYSnL+WqV6HHF8THVppC6Eu0lLpYQYaF2Np9B0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658730412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ppNPWnwo0sIT4OgGliJq06tW9s57vR/2seMU78Fnb2A=;
	b=UqCJxANgfYlIYhHIcRtPPPaC/HzCg1PRz2F562o+UFSnYsP0A5wVZTtqTk4SyQAC
	8+/K2tBWep0Pjdcrjel58Lk5UnaoB9fFZVg+jlbyt/qSDpHLyNSChGjHSqfDMyimWKT
	p6cUQwk2LanAHEtNMla46WMEcWVlujpRukN2vrD0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182340978d9-8da4b4e7-219a-4a05-96c3-ca5906edde45-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 69a7922a54d1695557c57404670c1e15563697a9ff57b12517bc987888f7a2a3
Date: Mon, 25 Jul 2022 06:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658730412
