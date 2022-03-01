Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A70D8179
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 13:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646142985;
	h=To:Subject:From:Message-Id:Date;
	bh=xUotmCaLlmzMtHOnlunz9E3FI2Fe+EjtkGog7v52saM=;
	b=TlXRbnikIjp5QPHQY/LmMPUOAaDuQ6guhycJMMSBcN9HmjEoJsljpAKMK9V06IBt
	WnZtoCfWX8Xr3zp/IAw+w4h+cgFntNWJSkxTW4mfLzlIPKFu5bnl5lOeq5p16s6HYGy
	KNSCWEY379tdXrFqx4YKIRjF0dA+p4uPRFvVMz3k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646142985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xUotmCaLlmzMtHOnlunz9E3FI2Fe+EjtkGog7v52saM=;
	b=l9E0B9ML4nteaqNWWbnLY790BKHetn/SJWjKNTrS6V9pnrIxEAHy1tetU9b5lOgO
	BCR7bc4Qz9bjjW1Wgpr5+CaO1Xou0LvSBh2d2TNJXxpKQZPH5wcCxJnEWOD7wlHxhMo
	0QVKirZbJtdUu0XJg8NZuptgciyKQ0HEllhdJlJE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f45c4926a-2ef233b1-0c4b-44aa-80d8-16362bd41b76-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8b3c58ce6effc4ef85c3d3871b1a11c9780a88a56e6ca0e2aba41d4d97e8b1f8
Date: Tue, 1 Mar 2022 13:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646142984
