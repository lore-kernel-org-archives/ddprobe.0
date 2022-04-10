Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1073DED1
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 16:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649609098;
	h=To:Subject:From:Message-Id:Date;
	bh=FncIUHIOJLaqVClk2siDP6gnOIx6qhtueV5OcDjVFzw=;
	b=i61z0/fNMZpkCgIRgtKAaFYL16vI/F363Y26/r3n+YRIYHzvmEx+9i0n0fd3h2Ir
	0v0RjEySt4RG2NOuxkGt2KrvpURSeRRfOjUtF8DFey4wXgaESHa3aSJWbYZIlL3Maho
	vT062/vLWJsXE/esDRtCQLocs9AU225QmaK4QoJE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649609098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FncIUHIOJLaqVClk2siDP6gnOIx6qhtueV5OcDjVFzw=;
	b=K0aTzvDvZjfmZ27j0daXGpj82zMpGm6wEe0n86ySOGyKmxpjx2bKx5zBjOzkBHo0
	nEbXmZ9cO2t+6+8abtOYGHcNR2PdjSRZR1jvHXkdB92VNiTbTR9/PYsEy/r81A5AGLh
	1L/VFVYuLEMM7Y5zp9CnTfLLZbLNRmy+SN8n0rHQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180145d443f-d3078246-aada-426c-bb8b-8d636e0dd5ac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0632dca1dd500aae44ff102c6267192bae37a6ecd84fe5acd9c0bef7bde088f1
Date: Sun, 10 Apr 2022 16:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649609098
