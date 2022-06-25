Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB3D17C8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 09:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656149212;
	h=To:Subject:From:Message-Id:Date;
	bh=X/wiQ8JakEEaLg88C6HaN626GbXr960khhTu+xT2Doo=;
	b=cmC/PAPssavH7c3QoTmfBbjBJNLsTv1REMuWEEPfcdb5lLoupj5xsNEcWw1Nv/AJ
	8XQBWmHn0T8+MSDQNU7Rrb2x2rrb+TCd1Zj2rXFCKhmn7QBlD7JIN7pQjfEw1gYKiCO
	PwhKZDNEPhP6BDpQeB0CrcYC+dVZJdIdezpMQwxc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656149212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X/wiQ8JakEEaLg88C6HaN626GbXr960khhTu+xT2Doo=;
	b=CrgJWWzVybQV9utchF2Q+dn1FI/qiOc6LIPdPIXgaJrH1MFn6zd3Goj3E8tvsfKQ
	I3WYuiqbxfIZArN6HIfIA+xkQlGnYnKXfEED4eDBf+1l4ngO9+orJNKjC9AYWTQMa4j
	M0s/wD1BgZvNeT8vNbbCPzx8sDjVacTmQyl8cOzg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819a2f7c8a-4c39797f-efd0-4fef-9263-f9b868ae39da-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 48dab25fc3aa258d3ac4f7d86246fa5694946d7b27cc85c5214d5c9f4e6fd030
Date: Sat, 25 Jun 2022 09:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656149212
