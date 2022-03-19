Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65FD2180
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 11:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647690384;
	h=To:Subject:From:Message-Id:Date;
	bh=8Qeme3tUQYxlmUIowmkwhmPA4bI75ip3OzIqRFAdZSY=;
	b=N9Q6HGVtnBpgGgRcANljeuXO59e1zUifLRQfg99lYE8RNadStiB9FRM/d6NjRNyC
	oulHzaHosqagQCKNZwwpvQLBNuAx7ANlBoM8MwN6cikM1ekgAttqXiNxAAgJStZu66J
	bYe/9K+UXVe8704crEV3YH4TTmfRJAW7hBQFVAdo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647690384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8Qeme3tUQYxlmUIowmkwhmPA4bI75ip3OzIqRFAdZSY=;
	b=e+4sMjmbseROukfyCVC171hnSz+NmPx0J87N6995td8JdGhlcmaH0LM5C6+3CORO
	1X2rvbXwp5U3GSROxIDWrXEq+S8nKfrXrDT4N5MabJ6cZVmE8pM4fFRQvXBuU9d0jl3
	RXytq7ENP9MKR6lgZOouIQJ+Kl8Ja1NVzMgg/YhM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa2000553-e48b9de1-03c0-4b57-a02b-b159378d41f2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 37cdb7b0344d8a2d4cfed40be2d14fa9594f3a3fe0d12774e73e0b9aefdfe0db
Date: Sat, 19 Mar 2022 11:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647690384
