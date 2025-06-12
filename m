Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C31E2D5421
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749760794; cv=none; b=YXgg3MmuVmfMaG6hHiExNFUHW5zs0Leo5D7HJcuafWsJpuDpQouqS6k1+uXJSBlE70n0zmWeQoJ7L1uwWk0W3cfbZu3qitrqpum/h03nLG9hBhufC8CEcb9TuGW4/F/iCsb0gHFqIcrQx4+wpbhID1zOwZ0aAMV42Hz75YWLVPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749760794; c=relaxed/simple;
	bh=Zq4Hs0Z5XJKml9lAJlSA4RhALL6gLklgnwmT9gc2bU0=;
	h=To:Subject:From:Message-Id:Date; b=kA5T2UH4lX+36ejxNhV3FW+99uFpih6a53piJIqEZSzq+BFus4nQ6BsXferLXqfsbT8cIYBPexgCgWjyGLkR9IlvVMSsOPmSS1Uqo6Hmyr4uOupjn/EXS0u4JGPLa6DVXnnEsFt0xloC1ZEIyzFOhzQrx/yBHNRSnQC620zyKjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WmF4roPR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WmF4roPR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D0EC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749760793;
	bh=Zq4Hs0Z5XJKml9lAJlSA4RhALL6gLklgnwmT9gc2bU0=;
	h=To:Subject:From:Date:From;
	b=WmF4roPRw7FuINuPB+8aWDnLNxpt4UlQESHclZ6MJO65H9ulX2AI6h2ZVQQYDiqQV
	 yPii1/en0nqTf5mIK10Fx+2SWXEYQmUPM+tFsnigmt/OqkPgpJVLLvM5SBVEgl3kck
	 UMIh1FQrIY1p5oNX55t9jpGHyN0w9XkQv49mr1CFrjXhDJfNBc6JmdltwlqUpbmfm5
	 RMPRfOf4IUNfCjMEIkryAqF+4nQO1KHcSv0AhSnutsINGEtM8nPd47l0v3yj7JWZOK
	 /WAftj5JYc7EuTKHZFx2FXUHgIb3eDJuKLoWO2zZvWD0Yztput3Bc/DEfiyq7DA28f
	 yYlHgZHzIUKhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D86C61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174976079357.8694.8367299710984453042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e5f55aebc600b7a08910e109c807e074ac2d616823a641902ed72ff85a858d8
Date: Thu, 12 Jun 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749760793
