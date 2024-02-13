Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207655DF0E
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 15:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707837497; cv=none; b=azWQYuGiqO40DCgY/vtu0vwQWgp9wNDfxKutsLdPhjB2otiliSQ4FHuxwFTGIqhzT168mB0PSFUs0P+disrz6C4FkK1UglIGssZVOSyDhMFjKce3nxr2KYToLZe9lYYwljwtp3Nc0B6D1GT1pd7rry0WtPNJtdIkMoIkUknci/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707837497; c=relaxed/simple;
	bh=91Xt/PMli/JHP9eAOULaTR2qvOtHBH/1z6SdBwC14Qc=;
	h=To:Subject:From:Message-Id:Date; b=GWQ1kaNKM6Sdy9Z+a9i6ZRm9sUlul6Z89Vhdo7WBuAZzCMmSPfLKNtNGiTUd40XN0yEFZlZs4gaayzgX+7kGKLyurFpe+QxYiFTJChRS/+4Y223Jil18KuArjGpUe4077YRQnUYI2e3p9bj/j5xxph4y61bhX9tr0KnWnyn6MVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f5uxTHXg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f5uxTHXg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DC61C433C7
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 15:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707837496;
	bh=91Xt/PMli/JHP9eAOULaTR2qvOtHBH/1z6SdBwC14Qc=;
	h=To:Subject:From:Date:From;
	b=f5uxTHXglCXikas55XMXS54zlT1BEy7kSV3Wd+/wq9lwfeR6kHNqg87eBKeBcECKw
	 Uy8sjtCPqn6GJzM/hW4GYts8y4Na/6DV9Yp13gSlihafSBJgca4nrHdaIkMq56UFXQ
	 Sq5XNqoZ1ZZkUGqrXNIJfG7k4pVi8CFf6+ETDlCvYY2ifrXXFJME4GLmg6bMqaisjD
	 Gha9oiXbSu5Rm3+p9IYrwDimaR0fFXC0sHR5fLrALqhVCE9haxn7l+O4Eeol8YVXtv
	 BR8zS2W4iO7SBFrPxDdaXPS5s6xKUoxxMH1Rh6w4O3KZ+Ioa7jtwSPAUlVkyDhHdp8
	 WcvQqa8G/8JtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 620B8C48260
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 15:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170783749639.17585.17993063009743952060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9120571b0824cfc8dd73c3e570da009dd78930eb0c53d7745816117cc7bcf9cf
Date: Tue, 13 Feb 2024 15:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707837496
