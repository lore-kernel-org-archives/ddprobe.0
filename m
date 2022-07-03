Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27CA21FA0
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 14:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656859612;
	h=To:Subject:From:Message-Id:Date;
	bh=ojqR6OBszfskhflRYWfCPmB5nUkvxIbF8nx753hLh/4=;
	b=kwV7HuV+pvMGvpkxbsCrTwGZusPI3Wy7s+UYPQF/RZPuSxoP/vcsSfVwDiH9WWVe
	wtR0L52BWFu62I+6puQFdFg5luf+lXbn6xI0wTlsdSomoXdPfafj0WnWozgOvn5bbuo
	g01DvPT0hZ1ThfTCdRCVQsp0xcm88XYlxj8fGAuo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656859612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ojqR6OBszfskhflRYWfCPmB5nUkvxIbF8nx753hLh/4=;
	b=U1RcA5fe/144AlaVCBGAKq/rTTmI8I2dPxSkQc9QT86MAbcnnJgv9SViPQ235uUw
	6KlDJJrLL3Cl/FiU+GXvsO+VT93z+5RQ8uvfp1ZSRO+FAGWUrCbMqdqc7Z3U69sK8Kd
	+cj4JsCxry7UepReZIz1Krm5IzgXFGMOY4Sg6QRs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c4875498-a39a547a-7491-47a5-af17-9dd4069ecdae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 31cc73011f90eca26bfd04937c9555eb2b6d8c5816b064c58527337688395369
Date: Sun, 3 Jul 2022 14:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656859612
