Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E7C80F
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 14:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650291658;
	h=To:Subject:From:Message-Id:Date;
	bh=erQ80cuCSCXMMliUwUpBe8hCQeMhcW3Ryjev607dZhk=;
	b=VzjmfXZOBsCr4JncDapNz5jn9ZxP9TtTa+URSMMu68lL8Ib2Lwj347Tl8pi1IvRV
	NCy/aVLdszBmGy2JYy6KhH9/Vfeh28/R69j+UjduMKHgUIMFR6e7n4plLc3UNMNaxvN
	Jql/RxxklQWGA6bty7FPRxQLCrnLJaNhUBP/VBBA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650291658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=erQ80cuCSCXMMliUwUpBe8hCQeMhcW3Ryjev607dZhk=;
	b=RNF1d33//WXUQfdrGtGRgQyGNzNM54QL9Dd1S5HGuUw4R4PGGCtCblYNONmW42LV
	e2WIqUzIPPdqCu1YnL6ycRejeET6fGx/ieNyiVpNTa1qdpW78aOLqcR1IewuQrqRwVb
	Wm0honE8WjlzSwRl8s5XyEMZD3ncgdiExQwt7wW0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803d0c4e37-1a5e2b0a-d998-4555-beea-19de32ec6416-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 62c975bfa1ef494e3211c95410ea2cc1f15537793bf1a2ca52fae38efa4c5e95
Date: Mon, 18 Apr 2022 14:20:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650291658
