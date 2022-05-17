Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 041B71874
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 21:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652824439;
	h=To:Subject:From:Message-Id:Date;
	bh=qhRzxQbuaGcKL6FUv6ZA4+p0AY9dc/ZvkmRNRqDokaw=;
	b=Iq5ShZyzYr3q6clFcdca/IQV2kz9EIRA3P2df3tosbVaJuIxzxlSDNTGXp5v+kPh
	v5y8ilLQKlC/uZFXVnw/hDEvxH/llr6zZbheENNGdSS0YULB8JL+CXHYm7du7O+ZjI4
	qix5GyyUkVD6FeI9Q90QSBVXhFHQnGmJ3K+miqhA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652824439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qhRzxQbuaGcKL6FUv6ZA4+p0AY9dc/ZvkmRNRqDokaw=;
	b=UiBImlVFvA/PqVcX9mjQuJK8fOQnfIY63Cy5YNL+SIM+ZGVId0AjGI6ct1AvuLfs
	e9A4zMvnGR7fHEcRAUqMM8C81Aegcr/g9t0oAnxSyLXoe2SZa6a2RJ6/W30973a23xI
	Cu7ivrqfKGvuuup8MpkL863yB9gtUPVCBWcd9oTg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d40379d3-2429f69c-f248-40c8-8bf2-05e563e63153-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9772df7444b8b3c757532feb95a08cf1417e3b84ab123aba0b5a67f525182578
Date: Tue, 17 May 2022 21:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652824439
