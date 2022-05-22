Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3308B20E8
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 03:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653188699;
	h=To:Subject:From:Message-Id:Date;
	bh=pxyYAOrcag3kygzaP6JX4IbgE/D/Y0GD4ZL+q+lriTE=;
	b=JW2B54u3RxR6DVuVrdb8GJZAMaJvJdmMH9BxMy2oupwkwg9geYg6sh72bQ+FJdtf
	OGUyRnJJNVdSLL1RX1fkbtvOfQo+uRKZZINxTSpNayyd9cp8Y2BVHvidZ5lEPKQqCaw
	+UAJ0yWGuFyj/zi08tWH5z1HEZ3Z9R7Fv8JNbtxQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653188699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pxyYAOrcag3kygzaP6JX4IbgE/D/Y0GD4ZL+q+lriTE=;
	b=Ohe3tJBLnGyht2n3pmIwz/MGJx4YlnVX0psKKuRFBAYBe3Lq50tYVBhtjbWJDKkb
	gvrql5MzP6zvYdqrIse5XlkJUzllggaF1WPS/lmjQCLDeZ8N9pp/RZQU5w28Z4Qlil1
	Ln8dY1+5+IlehAI47eahBDR0K8zedyUvmGzjzRzo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e9b9a4d5-e58def4d-7a94-4e0c-8dd6-45e898dac119-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6443836231d920b35bd75d620b210dc4f50717dd0f29dbb800b575bb85a0f68c
Date: Sun, 22 May 2022 03:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653188699
