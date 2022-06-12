Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 116E410E0
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 15:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655047439;
	h=To:Subject:From:Message-Id:Date;
	bh=A4vSIoVP5k5s9Z3xib1ccIRPblOgg8elIJy+mzEw3X4=;
	b=ImWptG1ar04LwFI5cz3DfdDFzGcKa1G6KBV/VBhLO0dDipqly1fbyzslINXi1M07
	yeTIVRuI2P5veMJVP+i0MqaBrzwiE16DJWDx+h4CVLS2hwSV5kFaATPGBFYn19gQY4l
	ipRcn4yNcl/KJa7Usog9fhIc9nM+DHrXweQAzXbQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655047439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=A4vSIoVP5k5s9Z3xib1ccIRPblOgg8elIJy+mzEw3X4=;
	b=kZqLpCecaJGGN/R8q7jPyGSqQREBUson13lJiI84gbB2a+DTCwAyeGYzKHaV+QGi
	Mhf/C5Y0aG7WXBtUMJ5dftJB8lMTzjfFmyjzRJEPOb4Zfazp3HWideL+cEmbsqKugFG
	Z2d5udbgFJhsKF8dxxdUf2qquQo9bci/VN+x5gs0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815883c382-17874d2c-7165-44e2-a913-75cae54c7604-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1d39c6b787f8b364d576e483d18b5f01febe03cd4d408de6bcf3680d32c34ff7
Date: Sun, 12 Jun 2022 15:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655047439
