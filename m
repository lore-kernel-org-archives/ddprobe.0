Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F6A52565
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 15:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652543099;
	h=To:Subject:From:Message-Id:Date;
	bh=VxpYVy5aTr8Mj4K14P6DR9VOgU2A2UY53BxKNAj4sFM=;
	b=F9kJWsjZv1n0ITNRTkuOAIt8MI9gNU0ebL6S0pHPKYIyAxplp3geYU0DrDOqE2rI
	OVfq6zqGonFRjFk3kt6Rxlw80xf1ke/UMFvp+G7BUcDt9306GgYr0ymSpPcgf6+HmDT
	4YpgL0uTiAQWKTpZiYjICFqRR6Ri+VEWY/UC/Cpc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652543099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VxpYVy5aTr8Mj4K14P6DR9VOgU2A2UY53BxKNAj4sFM=;
	b=Q3xOcYOhEkFwbBOsU9D07IvPMhnOntWJCZlMcQlmCufJim1DxzpOa1o3ym7t6BLs
	hi8Yfla6GmNrhL5s66JPUdfbJafGZdWcyZQnJgTn5kfnXYq2vOA8NzFtM+rve9/7Vet
	tsGBPENFvAkSfIg/MrfxMJ2I1d/ah3PuFqNmaaF0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c33e91c6-19ba0253-6d38-4cfa-a54f-6ec7ee301dd9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 01663b416652079f2b27a749cf640dd1de541719d983ed647090a5ef3175e9b9
Date: Sat, 14 May 2022 15:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652543099
