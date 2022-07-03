Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF45F1FA0
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 09:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656840412;
	h=To:Subject:From:Message-Id:Date;
	bh=1zdPx9oVM96RQ/zDrXld9/CzlTT8hnKJMhwHz25QypE=;
	b=TC96pEI1QMYZPrhWkExsm4bfda+BiWOwhUxM5D6NXGh+Gmj5b6nFpDE+ech0/hKw
	O/vYk0DtHFd/9leLfTb3eVElrg82Tv2zl7E3M0s3HOVvv7LtdjVvG1I56uv6LA3nh5m
	LDnG37IlpBI2gZX5JsJ6qXi+YUjSY7Fz/7z0kbmc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656840412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1zdPx9oVM96RQ/zDrXld9/CzlTT8hnKJMhwHz25QypE=;
	b=NUR0x88Ej4Vjnrvg80j77uHnoLfgAvpd+PcbCfbdznl6AaOYBmiu2LLBuo/2aH20
	P1oH5URN6PsiCOE6Y6RKHwcWj2NN1Op9Brz4UbOlvqnYwDvBOoPNQD+8AFfBhoXhvjv
	OWTekLeoNyeCL5lbOCtpt4KAaiUG8IVTStLhBneA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c3625c88-05198b55-8532-4181-a615-645f59f5b42a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7e076cc1535fa790f32a2ece04c1540026e9e5b78ff14a754ab5438fccf9fb90
Date: Sun, 3 Jul 2022 09:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656840412
