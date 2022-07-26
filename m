Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F4015385
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658854252;
	h=To:Subject:From:Message-Id:Date;
	bh=gHE0OBhnQloRtaoqaf0pJM/dAJc99uwQR7E9wcnVWr4=;
	b=KqOiTR7rY8GgawVOmnA6bcOVED+6muG2J58xsR4D4xqMhyZ3envDnJGAq1kY91Kb
	zC6j9CeXRk0EypOnV2t5h2bgzVGM1oDMyDKh4SB9xe86ytaCvB0ctiCJOEl0Xb0QCUm
	6e+SZ3dybC7lrzevdOcCuOHN1sEYFcdijZo0rSWE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658854252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gHE0OBhnQloRtaoqaf0pJM/dAJc99uwQR7E9wcnVWr4=;
	b=OhRWCpn9XX5N8nDPbuv1drBrZy7kWwPLfXn599MaB49QHVAfwY+8m0DlHzAc8Icr
	CaFqoSVqtD/N2MLCyseLvIleFDeKJCMoiGYK2+LmgtyHOf48/iGUQoUwC/Rdhqis5of
	hnH+7Wi2ddWZAVaBWl/3CI+jDsD2oOhFL7BFbaro=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823b6b2020-785af81b-89b2-44c4-8ffc-226171714fff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1d0bc0a677e8a7970dd6e2fa3d4b104c9ff45bf41e0f8b6b632523416d7c8a01
Date: Tue, 26 Jul 2022 16:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658854252
