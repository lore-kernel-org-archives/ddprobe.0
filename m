Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6172610F3
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 01:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647306084;
	h=To:Subject:From:Message-Id:Date;
	bh=lJbPLKT5sl7287f+dpthOaPRwWf6lP+hbMMsoqA5zHw=;
	b=aMgWSEHVxKXSaHjVrsdcWUpve23tXjVebsRx/cZJxPHDU9EQv10KysN3OSpaYz+a
	Cuhb8PWK5Y0FwsyzsFOv7U9jXHB4I8px+BRiL9UbHuPGhf+6+oD+jpEjI8f2C1hoFdP
	Czwg/Kkx17GWYJmh8ylEj6cnY7nlQyH2GkD9pA7g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647306084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lJbPLKT5sl7287f+dpthOaPRwWf6lP+hbMMsoqA5zHw=;
	b=AEsKsfbCGZtAjxgsyGkpELfl7rXAhFrpEWBRWe3O0tHpiZ4HLz/QI3TZbbXLrKpW
	gPg8UVg8IS/TJq2O8hh/lXohfSEI0EIO2Y3JcMOKRajLqutu9tDmuMvJCNl0JRmOSYu
	F/N2nO50w25XroU06EyX0R68rMJ31QrT66vXWOpg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8b181156-85edf01b-2c63-47ee-a6fb-bba82b236a3a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c370ecc56a0f92844e43e4c75db22f0a5d7dc0ad711021b2ce4f21f8f266ff8f
Date: Tue, 15 Mar 2022 01:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647306084
