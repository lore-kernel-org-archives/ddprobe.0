Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 084AA4C85
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 23:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657410412;
	h=To:Subject:From:Message-Id:Date;
	bh=iztP6opRChcGD04ha+tqUwZ12ctbIu2/QIb+AgF/h4M=;
	b=jzpfcwcwq8WtCHL6kNn0BrQvq/Qp8sAk291zlbpjwlEglOtMtNYhdHx1GF9rEnT1
	gchlUwsKTZsi8khUNinuKa3Q9+BUJase7CLI4TmpBos6ennPC4W86VC8KbzUUfXiXTk
	Y1GGP3AQrei75IwCr319ZmWw8RChAdSg7fFKqvVc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657410412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iztP6opRChcGD04ha+tqUwZ12ctbIu2/QIb+AgF/h4M=;
	b=Sqm6+fHaLCyp5MiDU42IK/UpYQ9unrRpB3C83rN0RMupZFNlT5vVQ678cfQBFz7z
	FoPepqiXEcemlhLVDtyKx9fq8pElsAqbJuSivd7KdsCeCmicTBfDPfhCHuavHtKYuIx
	JBGsK8j45CJQ1djuP0+KJ/74BzdggDd5ZzDYOfTw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e55bdf28-fbb05d50-5023-4311-ab34-51deda955a0b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b7cd336f76b186aca76f3066110e195f3e502b796aedb167d08f41bd5817aca9
Date: Sat, 9 Jul 2022 23:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657410412
