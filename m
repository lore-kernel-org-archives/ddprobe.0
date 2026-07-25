Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6732F7F0C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784985634; cv=none; b=Ddd8TUuP+PfHS54RUWRCyKfKQPLyjUqvHQKBZ4gtAseL2b/mMh018Cmw7a6pI/msFJiyxIitbtw3O0MCGo0VC8QrJNZ/uGQDMbe0OZBc2F8KEbZGhTcszStVs5HfBxYRxxR3Al0+Vg56OfqXf3OBVnpUQHJM+ZqrePD+FaKNuQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784985634; c=relaxed/simple;
	bh=WvfVY9uahEk0VedHCJDr++N15b8d/NxmgsTF7Qz4V9Q=;
	h=To:Subject:From:Message-Id:Date; b=gnA60aFy5ELaxNzeA4OxinPpXlRq3WBoxLkJ9iJLEkgRHCt5+e3DIkfi7gbA3tPqHgVseobyqna5WZu4avTePoOOrQspILcVLzDXCyqIEeSjY3EJ2iOcjK5QSUdTK8rYfOJ/G+vWZLOBObkOvp3nPrpil9lUjSmB5jUv9fCSRNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pFwzYxk+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pFwzYxk+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E626BC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784985633;
	bh=WvfVY9uahEk0VedHCJDr++N15b8d/NxmgsTF7Qz4V9Q=;
	h=To:Subject:From:Date:From;
	b=pFwzYxk+28YhWylYaWTdsysF+MmdxBW4PtaCqWCoh4xs1gJgeLVi34c8ztAJKHEKD
	 T1VGRTCVC2UVy00eH/0sYwqLMrHAFExmODCXM59Gbuq4sxem+hc5FpxMePE+OfRS8Z
	 fEa3qpoWOcS5vFkdTsxF7Pz09vaE6v5bU3DhpUgwnrgNqiivdqcy5zE0Fvr5NzpWKa
	 EZ2D2mg186rXSILPQVJ4caovJDxl0VqMew0/BhPPz2ROmW3ekbXcfZUmgh7+6uanbA
	 XWNm+MyN2fnzT5zwfXsJfN3Ks1bveiT+HGK4hWoOY4/G25wSxu8w5ZrQCq2mPxxFVI
	 YxVV5ZDsjTPPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFDEC531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178498563368.32459.8197182899069851776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b69bb7e23a3112f41f2368095c112d46311937afec231bcc61cb6fb52bb8c916
Date: Sat, 25 Jul 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784985633
