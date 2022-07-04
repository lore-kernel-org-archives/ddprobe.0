Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0816F3D99
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 14:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656946612;
	h=To:Subject:From:Message-Id:Date;
	bh=5L+UjEXjYU2q2UOrdPP2Hu/ouwB1PFsjAcJVCTkV11U=;
	b=fbFAu4fL87i/juDXC3qyYedq5PxrSoIxro+Gap57F1cNCaUoBVfQ3T0x2S3dGHPq
	a34e/6eT16c7QRI7BYvhBGUC5H4pVHh6Jy7ESkJCxN2bqIXzujeY7ck0oZtPfdd1D57
	W2GXHO8Y/SjFr3VX7q+m4hOxZK4aSGwWUz/uIn2w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656946612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5L+UjEXjYU2q2UOrdPP2Hu/ouwB1PFsjAcJVCTkV11U=;
	b=Q3F5SBwVC2KwhI1pxpknkYff7rkYs+pI3bWVOZsoR49NJL6DEubeobJHh+fgKuD7
	/fV28dMysWrZa9gT+vLc20P8wvuUx+BCS6UTN7EjXzl+Me5iiWhtLsThcXgXNnInRqp
	Oj7oI6O0hOsvgMnQ31jk1qyZ4Hxc1RO7rszZ83l0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c9b6d835-89a34d92-4927-4247-96c5-3910ec7485cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b807c2627ed9ac8d4e25c3a6f12ac19d3b20c316f8575fd8e6e9891fba85f6a3
Date: Mon, 4 Jul 2022 14:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656946612
