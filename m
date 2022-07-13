Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126E34A00
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 17:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657733812;
	h=To:Subject:From:Message-Id:Date;
	bh=WWedfc2xD+v1dZE5tKHSKUjgUrMgzE1cqw6lm8069gw=;
	b=D25SIiJsLEtmCpZ6FdifPQ77zxXgF1Dd8jjAvYybvUlCWXX8i08LKUlo2diFMNji
	oaRR432MI9ZvAG52vV7hwKsb8G8sVqHViqqcVPdb6OtBxpU+WVspaMvDY7YfVoQM/n7
	5dnJR024zj2HlIZDq/MSfZpafmgE417VXCC2CbTc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657733812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WWedfc2xD+v1dZE5tKHSKUjgUrMgzE1cqw6lm8069gw=;
	b=hzN+I2VvPdslNLiLAaLoqiqz8u4Fxqgmr7aDgpCEMk8toMGidygDBDDQTmRoxTaV
	8qDJeUVINh1CKqvCUabUJ+V3vm1GI3Z3p5LihEKKHV83fkLoq/lvwEsP9nazWTnn5QC
	COUSeMakaoVFXziL1uFJyaO3dzciNVnTF9zW8WAQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f8a2904b-c08df5f9-8e18-4000-b47e-a5b0ffccfffd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5695a50e08952ebe68339a5a51cad667daf507939dd919111d073514f6bfa5b5
Date: Wed, 13 Jul 2022 17:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657733812
