Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 135562E040C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751536794; cv=none; b=o5Gfqc24xcaHEuOvRAsVFco1sLXrnifaSE0cKbnVQxNYugwzRGNPJ6h4WAEQHrT4U7O+pM6rKXk0MvfUea8O/gg3YHu7zczsrYGM5EEVSe/rsHZ/hFBfZ+K55ruiwP7eQsOWziLK2KyCYCYKxF/sCO8L6qD6oBvX00My/BYWc3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751536794; c=relaxed/simple;
	bh=Oah6rb8rkCuzaJ+TphOFO+3DaYXuWka4xEZUVNGXJmo=;
	h=To:Subject:From:Message-Id:Date; b=A5qDIAVwIMUqgqXKCqrvj/cuk5MPaoTtfhvRtQE//t8BeQDeK80RCHLTkwgwT81qosLafrJmSh4Rdj0+moVUAvJ12pk0bgCKZKLBwV0jBf3fTwfh9tsK3k/uH1oH9UP6PAj0VfxQSlYlwfgt3h74zxoYTiL8It3+JfVBxdi/LCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lbd0+LQr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lbd0+LQr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14E1C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751536793;
	bh=Oah6rb8rkCuzaJ+TphOFO+3DaYXuWka4xEZUVNGXJmo=;
	h=To:Subject:From:Date:From;
	b=Lbd0+LQricAAXHfU1gCvuC0nddNhWIHTpYwlMHZFfiLR5Pb3AtAdMeEDLhqOL8t1J
	 wNLjm4rl6wLBGOH7wF0Dcy3YolymaVITiyDsYsy8fV7ZTfrKAta+Cmbp0PS62vKlrr
	 HuF6G2Qak24EFPBM2z7Fm8pYhIdT19CdqY85IFI0SbwWvtxASVXojVuPZSpkKjSwPv
	 oH3mRSn/P8OWHifZ71vyq+LOuoVKXsU2CmYvT8VHYFbz6ji/0wOVeMlalKQSMRagxt
	 o1VshIKtDHaiUhLVu0SPndgrMhNWF/g7N+1Auw4frSNIcFwv3MxHcBrXsf93/KyvUx
	 LfbYVzvDvVvSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB68C83F09
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175153679357.19344.14762546670444448163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfaa518339a21fc0774bf912f530d95fd34460c8527461be3e55947972d7aa3c
Date: Thu, 03 Jul 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751536793
