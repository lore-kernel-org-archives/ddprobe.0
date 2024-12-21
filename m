Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3156C1D9337
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734824754; cv=none; b=M9K3l35N76O82SrCyvg5gV8MWjYN7f3cBLKaaVpuAYvKwrc959mM3k0xVj0HKpa9vyBNUwnGrfRyXL7hkBEZzs4M/eLoQ7bBJLmlHKrfA4eiA0nTTM89TSc4sYys2uHPP1GPxn07eRUgwO7uqPnXcpkkTPu0q2QkT+UWebUn0q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734824754; c=relaxed/simple;
	bh=qvA6Ya0B8RyqwEPUsSFoSIg5wkckIEGUX3C4ehmI9Wg=;
	h=To:Subject:From:Message-Id:Date; b=JQu1AamVf9LhwlAkukXd5fYsnsN/uKwXK/vEvwndcZpcoghcn4SxlSu9SySuTnP1GIUHN2//Xgyd/9bA4t13QfkEtJKvsLPsjWn+rZC7jdiT2zLW7R7+GuBF9a02s8F2u3tQupDJtUjxUTady+OqkwYGUTfzuG0zB84EcLepnxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nj5SDj+i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nj5SDj+i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE18CC4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734824753;
	bh=qvA6Ya0B8RyqwEPUsSFoSIg5wkckIEGUX3C4ehmI9Wg=;
	h=To:Subject:From:Date:From;
	b=Nj5SDj+iCmR/YFsGeng6CG3EmUdeKW2t7/cuO9d46xC9kt++nqMpM/uYuK/MnBzCA
	 lX/bNZ01n7YyxmGA7ygMqTDGo/fmutPjisSoHT8uQOBT1fjcyBqsJ97a2O0Gpca5zZ
	 lLizhLVZGQXKDRBJaJNR4LH/coCQQCzWSHhc1sowJfIqVIBDEJ9Prj+z1CUeoPJNCu
	 8ZH2uyNW8uBz+LurHjPFceQZ51dhZgzFtCm5hVmyh4L5g3a5e4hXIjt9gGou7jpB8w
	 mbZPjSNI98VTYNk7JjgZ3L+BQLd7wgrFYAPD3n5Gs8No1LynFcH5ShWb8STTZDXM7t
	 OWooUG7PvWkOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D64E7718B
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173482475358.9844.5913668934059103438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20503db26375602e4396f6936b8e09f308037dd8143e314d9038ab956024cbed
Date: Sat, 21 Dec 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734824753
