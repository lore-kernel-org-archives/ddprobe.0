Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282A7623
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 03:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652584859;
	h=To:Subject:From:Message-Id:Date;
	bh=xZ8qb3PVzMlJrNYCjVn3qxOCoU3AKyRp1+aozKUJ2N8=;
	b=ZlXxVxnwf4f55MAkeiomEkM6BvFsiRUyHaNzU+/E6CQRuSdPRpzcyMAwGYweRaL7
	T/nCv9J8Re6j/JNVTqxzokCVtNSZxiCKnBx5mpec4rRsKdbq3zHYSjd45HkdQaX9ZWt
	Jfp4zJUe7m6Hk0Sf6wqhEh5Ldvldqvifgv+3kSb0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652584859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xZ8qb3PVzMlJrNYCjVn3qxOCoU3AKyRp1+aozKUJ2N8=;
	b=iAjY0Geikl2BDIIe/xXglolvqw+FPJWLqhcyBwwvYhnreu3RAevxpDEbcoIF5tje
	rguFhbrbuTJRhbt8uUv0gmsQJRfRcKLtiwhIO+znHUMyrhp/v1GAB2D+5F0L9XzZpFI
	Aotst1Z8JCgg6aBEF4FS9wrsOwhrrrSP+qHoTgZM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c5bbc696-4fcb15ab-67eb-4fa0-8162-67697a3b7424-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 44f5d098132cc8829634458f869dcd3fc7b73b771123ba52af5a7b9b2e6a4fbd
Date: Sun, 15 May 2022 03:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652584859
