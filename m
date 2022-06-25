Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B22F23C8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 10:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656152812;
	h=To:Subject:From:Message-Id:Date;
	bh=vK2nAXunLRiYjzREZk1L2iFeDy9vW8Sbj7zrJ7XZspI=;
	b=CeIlENBKOItry3p4tyx9AGajs70bpDU9L3BSP3ng94haO8emeW98FqNsbLM13oY1
	v7n9XCZE9i6SzYLToQ++lcUVq1Z57j8qV298eoCXykEka4uulskTfoV7OYc/qM/nRFe
	Tx3EWEHO6uiiCVcmt0kMhiWPC4em0K6T8zEC1p3o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656152812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vK2nAXunLRiYjzREZk1L2iFeDy9vW8Sbj7zrJ7XZspI=;
	b=PXNDy+0Vj9HvrCAYzWtMTqLdFP4dvsgy0LwZVgIA5KnhVaP4stRht+agLPskk4UD
	6qmly53L/pt8nCbMiWWX+PCC/ghrVwELZjGykAwYcoazWriZ1IwKfL7NgI2VVagF1iB
	2FgJiJam03dnnjK4hr9enZWwAbjSDVDV8Z19hBEk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819a666af9-0830839c-6e6f-47d6-a46b-a89a158f2b76-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f963cbb83a15256101114d854616cccfd927bc8d32e88303d94415e708e9d7ad
Date: Sat, 25 Jun 2022 10:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656152812
