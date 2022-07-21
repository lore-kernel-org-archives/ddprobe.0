Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB1F187F
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 04:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658378212;
	h=To:Subject:From:Message-Id:Date;
	bh=gAw89nm5soUXcovGgU4LevIjsyWj0hRs1WAg1Zo/Ia8=;
	b=jVZ7ZESEAcm4bsF+GkOqaWgTLAkhqB+kQgcnH88zkKUW8uZYV1vkKMMbd/lONFeR
	ffb45XEoW9AuLemXMs2AA8h6zcUNnbOLeKLSbfF3svobLu2iUC+qhPabS7Q/6Mrx9Bi
	PxUaVCoL1cQ6qiYUOdqo2OLO2Nmtdoq7Esmqf8oM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658378212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gAw89nm5soUXcovGgU4LevIjsyWj0hRs1WAg1Zo/Ia8=;
	b=LrYjuu++rAnCCbX//WuRksowNhmkhre7jG9Ms3X0go67fH13UkZGNep/VesPfAIz
	28DYL91nQlo4UnrBXXY7enLZttOs+zKgsUJ5ukrOisAkHErkQC/tHJ/gilUBRIocmkO
	S/ti7xRHF/b/EeBJTXsff2zi4pUG4LQC97jF2+24=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821f0b53af-7588aa2b-bbf1-455d-862d-67db32884917-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9525f38e90d32a4cf874fd08b8024f74728b5f033cddd8e0142f6dab3a1665e9
Date: Thu, 21 Jul 2022 04:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658378212
