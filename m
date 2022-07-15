Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F22933F0
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 14:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657897012;
	h=To:Subject:From:Message-Id:Date;
	bh=jcDZu+srH+hiCJx4pvliSkduo+qIqJRLqQuquaRv0T0=;
	b=faiVuqD1m9GYZbwMDQ8GooWSXrZDOq/trpuOwPEMFl3VvMhFfvWA6gxA+TB/fUua
	ZP3T+vH60ZkvI/F8l1NRsh1pzGghxIEXFPFjxU4ziOjvY/9XH+hA43Ssk6VOldEwQYZ
	VrkRfSE5ctPav1nogNfYycGDek6FEeY8UWMd2c+M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657897012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jcDZu+srH+hiCJx4pvliSkduo+qIqJRLqQuquaRv0T0=;
	b=fxs0ekq8Zm/Kq3i7iLEhK5ioXi1kvd9EJrSw4u2UFVm5XsiJ2vdhQAOLXpsBBjhC
	GgBu4QmsgK95BD1A9eWc59a1h/46r0lRlwLOaakyG4I5E7ihiHXOqtr46bSxKmqgV4n
	KTTaJRCKhDj+s4CzRQbVUoTPl2atZTOiETDSoeA4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182025cccb4-3ed68fb5-2609-4fd5-973b-90b341ccfc57-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ccfdb1bd5b17640864cb5d457e2867f6951e1d2b8d045c94b3c512cd37759934
Date: Fri, 15 Jul 2022 14:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657897012
