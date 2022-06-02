Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB03256E
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 17:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654192019;
	h=To:Subject:From:Message-Id:Date;
	bh=GRhn7lGuklK/pmxwHF4gdANuopunXT2oLsSIJkVIsCU=;
	b=EiCWoro0wEkrNon4GMwYagaQKrRx4gCgS65JbW4zcu4KGGLxc/z/KYVStDWLEQyS
	RPYpgw7qw1IkpEmCmBvTDTyiXd2qqIpMf+JKeE7VNHguM0sOByDK424H6S/FaKCMy51
	i3dIHXzDB8p2LT3t1ZIizSqMgYT6mcyl/8pGI8nw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654192019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GRhn7lGuklK/pmxwHF4gdANuopunXT2oLsSIJkVIsCU=;
	b=MF8hLwffh7cRvHJK9eAs+W/Zor2gcZKjJ9qWjR3iBf6nbcLyiaBEauBHIcJ7fPS3
	wk88r0jNSAFem7vq68RfRSElR6tc+CvVYOa8XXgw0Jy+t2shmogydo7czOkTrTwYf0k
	vP89h7DV/q+u7KMJ1NP6xZhHCnW6hGGhmZlebU7A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812587172e-2e08abcf-6b11-4b36-b7d1-17f0860e0098-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cbbb8a42a690b37db1f616c40e7a4e32b71b2cf147e142dc73cb07feda7ec544
Date: Thu, 2 Jun 2022 17:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654192019
