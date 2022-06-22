Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E35DE1843
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 16:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655914079;
	h=To:Subject:From:Message-Id:Date;
	bh=Kx2ikcDRI3B8AUwoWQh8Muhgkq6mR8u6aIk5E+5Y0RI=;
	b=KHDN+hr7XIS+23lX4t6SE8jabLKmpylrz68TcQ6H3gq0KJnq1d9iY9OkgnbrpMkO
	Ahu2WRrdfcyRJ1esxVnAH5k3jKQmt1ZqGtQfDaz108dWcmN0ikHy2C0hCM+Bpa0YWDW
	ZCMqOB1hy6w9p8/wIW0bOyrFOKhKuqoFqTzsM86U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655914079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Kx2ikcDRI3B8AUwoWQh8Muhgkq6mR8u6aIk5E+5Y0RI=;
	b=BLctj7Sku/o3jGhs3P9CdBw/D76XInv9cSZAswSCYj5b/g3+ESN0VIRbA3f/p9g9
	6TCtzgNbxrQLfAVGyjoIHIeDV+ExBL5T6qFerzDr97ei6XQRBR5C8zDl8lsEyUjzzkP
	zieXq/kdaoDHW25bEh4LDhkS46mR9+LcP7w7yWU8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818c2ba414-6de2b74a-be44-4132-85ec-a688b433f433-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b38d2184e203ca42a1f50f2144e57a9f57cc354b67b8f937ca0fb5ea411a5f81
Date: Wed, 22 Jun 2022 16:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655914079
