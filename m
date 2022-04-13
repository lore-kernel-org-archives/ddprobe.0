Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0CB728E0
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 08:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649839678;
	h=To:Subject:From:Message-Id:Date;
	bh=C53r9APegIfsLUuPWaNCeSGzCK+OVnO0yUSsxiviq7E=;
	b=Osi1pZcLatt84ONByZXaXO3gWupKO3Q3+QeBP4R7tohXucO+8rG9+pPOTC/PIG1Z
	O+SJ+KeiXzBiAddff0d3GwBgP3MHVYz1FtJ7sE+Ipmm5dOyFHPjakQk9hXoOXnxUA3m
	sU8Y3kiUI9GTR97IO4oZ50uujSkBUWZILvCm8YeY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649839678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C53r9APegIfsLUuPWaNCeSGzCK+OVnO0yUSsxiviq7E=;
	b=U+uH0a7mP29O/x++jPlTC8CN9OZM9HyKZYOjQiuF2nPmbaGcoL5Uc11dG95jXxpU
	g7R7IzYVuwIuRqiS3WgBZ2+QKgv2PISo3lhOlz/9pVi1yh5boN0r79E4DdUYKMjYvCV
	GHkeIWMgsHIjj5Bwet7GNHjRacapT395R/xRxs0I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180221ba31d-3ec87ff0-dc72-46b4-9c25-90d0b7c3d9dd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 94fd87833f6081181cc2e09bd918342aa77a5f60ab2938a61165df1f37c8619a
Date: Wed, 13 Apr 2022 08:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649839678
