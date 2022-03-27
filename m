Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C648215A5
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 08:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648368838;
	h=To:Subject:From:Message-Id:Date;
	bh=pwBFNdY1asxeN0pyo8oam+cz2Q7SKpphs50WPpokBds=;
	b=Dtsj4jJGcKIpN42rJ2WyQNZxnqUwxuKyaGSNlUy9y4ogNzi8LKL2MjMJiQ1vS0IA
	APfh98FyVFRXuiAgWPSWk5UZGPYmUjDE2u14DVk9Wx0L29J/OwoCR1hqr+ybFIaCv53
	tC7MIUewgVoGMZUC84Cjk/1jqPKXJkOvBLxYtxP0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648368838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pwBFNdY1asxeN0pyo8oam+cz2Q7SKpphs50WPpokBds=;
	b=b0cIRI/e1TOWW8kWEvQHKRNKoC1krTUp/ovkx04GkAuzISEPD0ASbhQESdAW8Hn3
	5gjMq9BFrPX/YvG4Hoe6PGrfSxSpTgq83tcL6VAQIFzG5pprmjZnk6sHdD8KiBi6JOJ
	pG7RSnFOqk3+x5wDLybqIDIxnuadRCwsYfVGHI6g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fca706665-ca324a5e-f878-4cb7-a42d-6caec3150fd5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0d832f2bf9e2e893799812c0c842a9ff4f6ed56ded7428ff3dcd5ebaeb888c78
Date: Sun, 27 Mar 2022 08:13:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648368838
