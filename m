Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C75287498
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 21:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660942853;
	h=To:Subject:From:Message-Id:Date;
	bh=IwAoQuvi2IhISbR3aShEn6FUFUOkGWOw+UpV38cbaZA=;
	b=N/m56vkAPLmxPQc5/AUa/UTcGnTYA+hgKoovIqaJzCk2KQ1quzSnqt+EH+4sG/7h
	wxy9cApqhk8NaxuxCDZ6J0ssdK/E/7yo/9O6Xt/KXlE+y+e+f9FpDx88ikndT4H0dr2
	FCpNL7q8/dQGBbz7DXVm4UwR22vLXP/BbE82dce0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660942853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IwAoQuvi2IhISbR3aShEn6FUFUOkGWOw+UpV38cbaZA=;
	b=MtnuQuTyJog70Cgtsa9Lcu6Lz6N/hnELUJ7tUHUr8e6D1IqZNzSOdTxKthPgiU3N
	yQ6Eyv9KWd3fnNNrIGfprKNS2ckvdvCSxp6i0McUXE0VHmjKBHdezlfVAmib1onlbAL
	8YxaG3OYdPYejfZZU9rHGPwzIwmAJG8ycVSNFWTc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b7e8a1cf-0270e6db-e36f-4a33-bde4-03b188493881-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d10f1fe0ce5fd27f66ffb38e4d3438960c52afd6584d4e17d799a6c04421ee83
Date: Fri, 19 Aug 2022 21:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660942852
