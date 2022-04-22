Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB73E2564
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 10:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650622738;
	h=To:Subject:From:Message-Id:Date;
	bh=IdbKszz1ntZQuh0VRois6+9GK6ihNwneFEZ0qiYD69U=;
	b=AZT9ZRs7HU4lEtWx6Hpo9vCtG0wc2n7KShhzsVAqKPOUadcCvpWAY0q2okIH68Xv
	iC/LvfQ4WCvVIMogU6QTBo8CzJf6pcTcU+syBeVyZATUU5j/CAZklQUDxk8wJ6MiIQL
	FoArUOBTaF2vD1/aiceGRGH5x9XTlAS9GlL8W+ac=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650622738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IdbKszz1ntZQuh0VRois6+9GK6ihNwneFEZ0qiYD69U=;
	b=YBkAsrnjZgVDYoV70T28IAqtjIZYBIFrgAcNQPFjWv1zNmOKDqdptX69QV8hxEnf
	EWKwK4cRCLGZ3nORBslXw8ba3lsMUATWP/fb6fYB/CjCMP+yjxZ2IBtrn3Fq8Iam3G5
	WWRZ5ybOlBZ3KuObyqImSa395JfqkmP3P+zRJF04=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018050c82f50-bd8fda61-84e2-4a9c-8a91-0b7e29cd9c41-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f2fccb815c4dda7fb7ac286bfb89b1f70fc2f0f367091651f1630e2a8d402f63
Date: Fri, 22 Apr 2022 10:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650622738
