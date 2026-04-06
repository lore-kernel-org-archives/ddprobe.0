Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287EF39D6FD
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 21:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775512534; cv=none; b=cPwBN729QOvEBEmLwWHudyVStgz8TrTM/+GAPlh45JVZwT59349dzJJQm6zisrhF+lL4q3A//5dhnAYDGZh/hItiKrzzfYdygVxc07LlpADPlAKWvCTLypccGkg9Vdq9Q5F/IpotW8XS5zGMHVqucUWZq+yeh6wIFTKKmKFKo6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775512534; c=relaxed/simple;
	bh=1eEDFsgyNe5FPb7MRSjXfmCzLjbWtlA7oWVkPOxr7zM=;
	h=To:Subject:From:Message-Id:Date; b=OJ+w4dgcVjzThFxFVeOLcN70CQSjNdUp/3NfKFNequkfSujxx1Bng0aD8+7KmTgNaJv3tbPmkfqG5hNlqgNbPYHyKE+opywTGu+LFv5A8H1Bhv2mqCuXV0+nmp8tstSsOaZMoRR0KHtwUX6viscU/cxPyZODnwo6barQ/ZnAqe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OI2/lyKN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OI2/lyKN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD8B6C2BC9E
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 21:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775512533;
	bh=1eEDFsgyNe5FPb7MRSjXfmCzLjbWtlA7oWVkPOxr7zM=;
	h=To:Subject:From:Date:From;
	b=OI2/lyKNSMeT/nFiqXo5zbO77zD5Y7DnIUFv7Pm9lmpV/xPnOit6k+MXubqDfjJlV
	 VISPPTHEMbCtmtgeR6CaPaxaRu6PkdFcU6opfqoOUXgYCjPtusqP4l3HV0fOcBkp8y
	 0FnTpYi2Amvh37YD3YWWAQH4U6ej0XqFKM4yTkkiCafvNE8QE+94TEEtDXvq7IRIeN
	 N7UKcLL1TeT188Lq6njA63hAHw3e2j1dHsqBY4GdXkZAkWTiWtqxPF16ZPuo1m/L+S
	 JETl665T16LQAnl+lYHx5PmMj815cNkia1gNnb34HlT/EPunfdb7/q7OY7vayqMism
	 7G8U9f0N/XbcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB615FB5166
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 21:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177551253369.6596.5965445591879307008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57fe73a87bd81bf9042bad98fd02e513f8df8fd8c20c89dc2082af78cbdfa8e0
Date: Mon, 06 Apr 2026 21:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775512533
