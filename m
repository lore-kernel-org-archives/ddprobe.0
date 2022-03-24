Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B19123BE
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 21:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648157098;
	h=To:Subject:From:Message-Id:Date;
	bh=ambo1J4RNkbjb9BjkjAYuYhaEGaOxZk7NbPFk0aBrXo=;
	b=UnczT7Mk4nwRW3aWWAUVxtzdcBt40+fQdBnRAozcEFgliYTbPuLNtKxAMSwqMepn
	Oz+Dafy0NtGjWY1xyaBfOPl0NLX8pZbLVywyocAN+AOLRWzyvCeXXHUqCR7v9blNEJB
	HTsopCf85grkC1ksPe0Q9h/HWWPaqcnavKdWvcVU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648157098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ambo1J4RNkbjb9BjkjAYuYhaEGaOxZk7NbPFk0aBrXo=;
	b=PUKEe9uYq/T7wFj6lwAWo4fauOD99NKSDagtfOn5EZrRqyZM6GyO2IWHpuyukQ6p
	7zU8xOMuH99cnRHGecEeqyZV+odz7xGHV4H4fK2XeK1/bqM+FhE+Q894rDki1EDNzC3
	zPRiMLz/k+0hacmz90C5JI6dUqkkUVCr3xAoXJc8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbdd18121-db896ba1-7441-42fa-ac5e-4331ce72bc83-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7abaf4b8099123802ce91884005734cf8d0f2081e36d069ee6e013bb6eb20b4c
Date: Thu, 24 Mar 2022 21:24:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648157098
