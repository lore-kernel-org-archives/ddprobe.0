Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA1C5809
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 10:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649501698;
	h=To:Subject:From:Message-Id:Date;
	bh=8EeTng0qw83g7FiZ8sEwbDV8YYKYWQQoBfakon76s+Y=;
	b=b0fxR2/SxbdK1wNT8vE/VMs4bCJxWSJF3/TzXXrjwaCa+nnOU3hd29QBClNrNqUz
	BrYjRGtPk8HiKL9AO+j22a5lbYghYG0xmZWr6lEL6q63mhULI4YCQTSm3yz9eUJYcnf
	UHcuRKvF41gYlSWLjaAojoKcSyiFVWkbFnDKnjA8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649501698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8EeTng0qw83g7FiZ8sEwbDV8YYKYWQQoBfakon76s+Y=;
	b=HG7QRVN9ThBDraf1qsAIOhGE0wwuLd/xdzWIoip26nBES+UnF5wPfTrfp1Yi/MJt
	+jM7ZXFx+NqF6PlJLvbAcAgHZI8YXaJwgAt7sPyxdn3kXGpeqBGdLanF51za1jnvsCs
	o0OuNd3ViDipS22G5Xa0NmjzD8jx5PlpvNGE78w0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800df6790b-32a1bd95-070d-494b-9247-9b991c3e5436-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bb47c8b03810b6555e0a4c403072f77feea506ec54a5af57e28d09c6f18f0057
Date: Sat, 9 Apr 2022 10:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649501698
