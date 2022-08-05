Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E326EA2
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659691252;
	h=To:Subject:From:Message-Id:Date;
	bh=agH95u8OEJ83hLIRzc13X9v/+Pq4LgT9ZYzSBZ+LYeU=;
	b=PMDsVeLKYWqUe/izW11paVxEXhUxQvsZN67Qc8+S3hyTZv6KTWRRqY2UhKqv9yDm
	RhGnbXhnHhVxE5hpYtIPraJvethovzsbTHi608djhbLs0U/N14pCNhqoGOnctUfS0gO
	r7N61vYmNPclUEeSO6DY/5xbdhmn3dPYFpGNIjYQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659691252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=agH95u8OEJ83hLIRzc13X9v/+Pq4LgT9ZYzSBZ+LYeU=;
	b=KAoCP9W2HTC7ZDyBJ5vNLkfP0YnruitzrLzxAD/R0wUraZtEJ5RZtNeLnOTsTDk0
	mIt54HFX5UEXJLLY5pd++OEY682EA0YxdN4+KLlkQrTrFAkuacNcxjQS/l3fZQ7OmAy
	ZhSSgy2JWSiESk27jZ3+pVzNN7dosXQafkqTvmDg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826d4ebb83-fd6b8468-be7a-4644-9534-ef6cd52e179b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ffdffa6cdd310e81e577846a5df182eb1a08bd3973fd60b45373ae7b53d1736
Date: Fri, 5 Aug 2022 09:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659691252
