Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE4D35D5E2
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 19:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784749774; cv=none; b=jW4WogXMYYumZdLFdLGyMkY+noEWoKW+UX81krVPeSuC/H/VAPQBMow2keIyP5Z0vigFnfWxRtUHmcMrbHe8JYMfZuxnO0v5GzGa3QEjh2YN9VBYJsPI52r4LG7LRgOg43u/kGsYpZ24fOlwZxfOUeIYo80kXvjIuk609rUKKJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784749774; c=relaxed/simple;
	bh=EQKGNpmcXgBylcEeitWdxISkI9d9IkKi6LBLuOBHs/8=;
	h=To:Subject:From:Message-Id:Date; b=i3kPTPycVTAo/nz6ZTB3bkW+J6eDpKgzjeYkfgb9PiZExSkKsLWifctuY3wd53d9XI8Mq5SNBNRXF090sUTulY4r3F8TgUwB/BA+P38MFc216jGMofzKuQirG091DVqSo1diaeNelLXc7OPEev5vRwhvL3wKb5xqDRYMGH3lIzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bT0BZXCJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bT0BZXCJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF920C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 19:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784749773;
	bh=EQKGNpmcXgBylcEeitWdxISkI9d9IkKi6LBLuOBHs/8=;
	h=To:Subject:From:Date:From;
	b=bT0BZXCJAJf7mhCwgc62MruWoY9l754aVyT3IKBQV2OJkLV3bIMyCe7uyGrUqWWrI
	 qqVAP0Ez0SMlFMVddPsj1xBSPcjLfYexHXx6mtw9YXV5WAX5yUVMfpbUrCWjMRVo4S
	 /zqlfwhr7bAlOurYXSVi20XRLmcwbfvCrFoEEsLKFYDJDbC0jm5aWQOEj5Cc6/m3k8
	 hfN7aWKNYdPYV4QD3BNGe6v3G558s/Q4NFqtu39ZRt08AYPdMwuWrKCdJpC23RwMMF
	 UVTYT4vtSIxJXcCtfGFWzkAE4xJ8XA7MKn0C5146qUG5COaKbXvwMVcXB2UIg33vM/
	 +oLXuwiGH14ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9F25C44536
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 19:49:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178474977373.948.2044355017756734358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd7988609f58717431d89c02f974de1f558d0c8a074226a1feb0febbc50a8def
Date: Wed, 22 Jul 2026 19:49:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784749773
