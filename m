Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0829C7E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 07:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658561212;
	h=To:Subject:From:Message-Id:Date;
	bh=jx9Nx3sF+yG2nZQBeLhu/zwrZuENi5cdr1QvnlmrUTU=;
	b=FB9e9m2i0GaG3+eMg2nPlsYi8sdW7nvNY2yuacD4etPiFfksq7Oqm0Es1HaBH+z4
	OoCn9Veo9OhositHepe35X0FGaDbYK0N3/xLdk8tbtNuMu01G9NMztCn/hZMlN9Chf+
	V9wYqOaLsQkQkKeuVqo/fATbe0NjaOfz74y+/GRI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658561212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jx9Nx3sF+yG2nZQBeLhu/zwrZuENi5cdr1QvnlmrUTU=;
	b=U+NJugasWJB0Q1dxHtVPM63o4AFwsiuUek9RzDqCF+cXbWyfRm5U/i0Iq/LONujt
	askqdBcfCRSbRgjl3dXF7SEGAxpZUaM3vFU9TiB6RiUj7xCnFQPhnZTVhBV7/QEclfP
	t2U+1bvS+8P/6DAZy43kG2rM70+pq1j+cdpk7NwE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018229f3af67-55070e25-9e6a-4b32-a947-dd7531282337-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a7de4f4a2ee7aa13bb0db414cee99a36e3a9850f95e3f834992db7f16e6bfabd
Date: Sat, 23 Jul 2022 07:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658561212
