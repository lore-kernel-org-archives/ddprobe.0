Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148D81FA0
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 15:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652110018;
	h=To:Subject:From:Message-Id:Date;
	bh=4O6/cKxMHRmqgrL72Sd+xIl+I71ywM1maTXqG+BWViI=;
	b=BvZdi2mkteGioffPpBvkYbZfMeRZ7nw8Gwd1b+qMguqY/onSEDyOGvDQWxqJ2a5B
	L4aLUG3srWZ2aAFK0dHeWC04RaB7Ey5g9LwqE3BoJu+0Z5P76P4ONV69n6L/ve44vHV
	Li6jdAyWYlxjsrM5YcBK5bG2Z1KUweQeJkOggRak=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652110018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4O6/cKxMHRmqgrL72Sd+xIl+I71ywM1maTXqG+BWViI=;
	b=TvCsf3+9jJ/s6KiJD1hOMhk6/fHq2d6zdJ4aY85Ka7S1OpABQ2J94db75cO88Mur
	HdZ9x/LDVOMxfGpaw0zr5J5n8Tn6MiCxU6xCvJ8L62EGUyQ2VJ/Wyu/OGKWdEM6K5f0
	4FUtCrDylmcK5DwDSPWJUFtbtyfEQylMHdhVJ1mk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a96e46d3-1887c8e6-5baf-4fcd-a89d-75b4afa22f9e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ecd7f1cc097d77ee3bcb965e5fb327c52972438483d59c3bbb4750cda3409d2c
Date: Mon, 9 May 2022 15:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652110018
