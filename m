Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1E227A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 11:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656241612;
	h=To:Subject:From:Message-Id:Date;
	bh=hICbP1vaxPe6R78Tji2XDQ/EodEL5bkZ5SC3LpZo9ZQ=;
	b=LNLyDfD0yeWvKx+kve3r91MVOag0QLu1GfSvElEwVRDn6VpkAhexfEpT/I8gMbxl
	/LUY1kRgxgr8mQJhSRlA552zkAruZ+W7xHIrnL4bcvOy0sDFt4JO37Ylb407K4uU1Lp
	vhhUAoXa7PhhQn4fK2qFP3bl2KzTeqbc91ofqGh0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656241612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hICbP1vaxPe6R78Tji2XDQ/EodEL5bkZ5SC3LpZo9ZQ=;
	b=iD0kkrYeLPFZPSbhrJPOeINPzaPKGx8O8gRAx/v8slyWN3uP2pzzbeCONwuCgy/4
	u0C7zEosRu6ymnF0mxUVDSfpgtYKKtxqRhpuHxYsPyLzUMKA9tDUHFUtjXqcr1M8Emj
	O2AYTIJUgMD6X0AxM0mXcpg/rj3EKYtdKmdSGMsE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819fb165f9-1c3c0b54-3b6b-43cb-9ece-6d9ced142729-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ace97003c04ef3c6ef54bcb701922afbc301080a4f2b285fc7dcbaee7dd77c25
Date: Sun, 26 Jun 2022 11:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656241612
