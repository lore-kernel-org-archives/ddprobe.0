Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 841D81844
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 05:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647321385;
	h=To:Subject:From:Message-Id:Date;
	bh=cvc86T/MlDnp4BjoI9b1QUJpzYm6yiqy0dzjxa2qees=;
	b=UfvS+8oPmdObjFqg3z7NMFQNUQGN5v2E4PKf0B8k1GFcGzpJnjHj8nOuvuNsjpH/
	g/qjfOVpbHonBxjHYywj+PHSfG6UJrxkOFFY76j63Ma++yXhwkZ8fH/rFvo37O8BBkI
	5q30ef5/gL+pmzhXfzs7s4J6gD/Ns7Yr9k11rz44=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647321385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cvc86T/MlDnp4BjoI9b1QUJpzYm6yiqy0dzjxa2qees=;
	b=FYM3nudDEKdXKDGcPklK0Bhq45XJWknRMd+Ec3cLCD60fIpQZCswZLiCCDiTEpcY
	KlGlEV7YPjdN5zmIAEf3V74nZdUEJUr8cAVtzgOcX1tpYxCS7ayh8c7PCW90F3rCgK5
	rRwB+GUbMPbCJAB2odpYaD8CST7iYZj3Y+sgp+eU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8c0187b9-bd10098e-d726-4f43-bcbe-386bc29dd63d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 011afa509522a49ee0467ef1ac3cf8b8907fe77b7b18de0505df94036871fbab
Date: Tue, 15 Mar 2022 05:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647321384
