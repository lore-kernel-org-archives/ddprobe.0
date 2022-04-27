Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F747E
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 03:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651031518;
	h=To:Subject:From:Message-Id:Date;
	bh=ULX83/cukAE1VxWQzEQksoP02Gz/6qdcqbrznPDjJcA=;
	b=lx98fjWtLoGJxzUq1ueds+JJxD1BHr24TotcyabFwxc6dPk+dZZ2dQMDUkRTbSNP
	DLSMJ6nxh4xz5vbvbKjKRCdQRAy6SZTK4xxATYqc2K4JSY3oEU0Nw+4OmxFotrfaEDD
	qoNFF7QLBhyKWUPt3Y5zTCDYMvzCksJyDXeRyy+0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651031518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ULX83/cukAE1VxWQzEQksoP02Gz/6qdcqbrznPDjJcA=;
	b=M/lNBkQHn/DWvI92gAcmw4N9Yf/zV64EU+WJKDKdctuOxuZrnEFsRd0wGNTavaxj
	YWQDVxXI30ji+kgX2KVf7DWOwagp+YaTJdQa4Eso6HurR7SU7tWNqSA12obdbmnNaKe
	Ld8ulwY/ynsq1zbCgKdbF3w0zFpGr4bLgpCBeujc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806925ac2b-aef09c00-8476-4d37-8854-a898b3204d6f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 45932d37bf230976438d10e0614c1e6248452443b62628bd36e25fb806090a7d
Date: Wed, 27 Apr 2022 03:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651031518
