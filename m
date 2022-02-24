Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B27061386
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 06:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645685185;
	h=To:Subject:From:Message-Id:Date;
	bh=EzO3sATGzg6FzOnsh230bQvsNhrAmjbFLKaRqFqOGmo=;
	b=bnRoa/Jxa+aY80r1j06uSrzM7FKPHtEnlh9Kw57gkJTXAN8yPfxKvee09CFumSbF
	EhGWtgNuLtbpUYNdhZpULZoiTLEMcsDxNFW+7L1w0TXIgcae/pcu4qjt0r1ESMYmdue
	PIgduhdoVIAlDVo+iUWdUEWZiL0HyE1hY/kubczM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645685185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EzO3sATGzg6FzOnsh230bQvsNhrAmjbFLKaRqFqOGmo=;
	b=ObDPNUiPrQmfzT6O0Yw5qxgLixbHwcoHhyvRlSHqrWdxW8mCyTgvQHgxHUDFBK5J
	iF0gAG/Z2L4T0cNSQt3uDsOlyZz6Y5Jlzs6eZXhdP5LOkJQWujuNHvnciPAMasRWzpf
	ANyeliXYt5t4FoAMJX+xDkV4rBSoXcEq3wAPmXdg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2a7b18ed-40bb3f1d-b3fa-4bcd-956f-be79096f4328-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7d998ee9651e967c802ebacd781a2d50b86b652a0127b773f0783c5db4833ecb
Date: Thu, 24 Feb 2022 06:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645685184
