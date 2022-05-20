Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7F47E
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 07:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653031439;
	h=To:Subject:From:Message-Id:Date;
	bh=ivG8s65ZZaCvbZzZ3h0EwJwNrybjEAbOosizZgzAsrw=;
	b=U8JXM/9GnMrfOoszujdHS9N/Gy7P79kQTgWPBeytv3KR6brIZFypsaR+R2SHFTMa
	blS2K/DpXBWpwGIfacUZvtexYu5VQK6mK24aX57UvwMUpceHh7lxTUnv8K4sVmRVyif
	p6q782bhY4dxqcubk8MwO3Zo42FJg21tZywLVOss=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653031439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ivG8s65ZZaCvbZzZ3h0EwJwNrybjEAbOosizZgzAsrw=;
	b=jGYpNqqCNMGvd4HDjJ8lUjvh5KVn4QSNtistMvXlcXM/WKF5Ha5i9e+ULfYVHiyw
	EsnNE56+l4FugQNh7KU9adffF5kcm2eeAhMBGzTzjGWaaPQRr9Jqfa+BQU0LIt6lW/r
	8D1FqfKX9WsZbVwxjUVhwdHTF+8wRndUN63L+NFY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e05a0bb3-bc2ce53d-a29c-4e85-b431-9658d561cbf4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 856f524370d877606e915cf2f48337eef361d1727ac9dcd183e92f106ba82967
Date: Fri, 20 May 2022 07:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653031439
