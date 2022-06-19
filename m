Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF40E7B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 23:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655680979;
	h=To:Subject:From:Message-Id:Date;
	bh=QvNpqNqfuwlacg3i700Q475+thzSC/mVO8t+oYFrwig=;
	b=DqHFzKtvtDHDI3aNKJiQz5lh9Q+k9+y07iGrWMFfeN6txgegAuOzRrUHJUx+lECr
	x+6qJQvlzYxyTpr4snoqrvHcnnOTbHMa5IFcnC7adHD/EIcXPqtI9Or72NPkgouzhf8
	kmTAtaKDx516b6NOVf5VTqCm6qntC3WKkzBOkwRs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655680979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QvNpqNqfuwlacg3i700Q475+thzSC/mVO8t+oYFrwig=;
	b=fBSb9sOUhpU6a4zv528+OYEFFtXrGkYOlyGucjNhOWLxkJp8QCHMLvQ+CBuGwmJi
	ZDyQt4OHgbRZDFyOBl2vz4jrshMqrOuBkebfWnF6SRlVjIHkKHDUw0svkHiMLGwBrxj
	sgL8kDjr8JWdhHVtK5YKHBcJMeB405TlAm2L9fQE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817e46d156-3535707e-927e-419d-86ea-1c44bccb0994-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b5711250967fe7add07eff6ce1c604cdbe319977926bda5e1429a114ae921448
Date: Sun, 19 Jun 2022 23:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655680978
