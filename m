Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2DFB2C9C
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 23:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650412078;
	h=To:Subject:From:Message-Id:Date;
	bh=FW5Ajw5SScTolmEFMJhaEot/Tl7JSPhzD/GiJA1/AKs=;
	b=ClCS4BeI1pIyyxdq8lCLSknY+Q0mxBfo7vUr/apOkQEHU3+Gt4nhkaoLDBDTFMw8
	DVyJRIKswiQZUtQjlFarwvCHqkdS4wZLCbq04Jnl7qNZnQ5q96XW1q+MW17WYm15D23
	mtTOfXOmpwQU57YN/In5i374KqDOZVkyPPLPtLFM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650412078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FW5Ajw5SScTolmEFMJhaEot/Tl7JSPhzD/GiJA1/AKs=;
	b=k477mdtOxgSZLnC7fwSTwRQmqvqxCpSlV3MItmYNQv1NjVFxSDiDRr03gej79O2N
	jHHGWTuArYIKfI67HrUcbHjneIMU25SjzXQj++qKQQ0EcOvsa/O3+4iMWVdGmJ0991n
	xALyuLQ/YHAaK01QlFTLvogTPnFnSUumkZ2oMb/8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804439c4bb-66cc2d99-73ff-48fb-8750-8632e8dd7439-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9e27120f59193a99bbe76e48a70646cf6690490c5cda543542124b84cf1e2f24
Date: Tue, 19 Apr 2022 23:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650412078
