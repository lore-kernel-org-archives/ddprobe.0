Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A65C3D81
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755748194; cv=none; b=QmmbDRZDBZPwP7L7kJA4o8dfn3Gyx1/r0/Lc4Q59/F26r1pC0nGbqVfDRZtwZ/GkD0gBSAnxs5lsCD/3+8NRx3bofO+Cex3KBaAecYQJ2QnjvQV/+LKTkkewxAQj5T64eDDM+7BhPYbzTzodSO1XVmFDRwdwPbSdD8chdvj4mGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755748194; c=relaxed/simple;
	bh=Jse6lZ5KMngC2Lw2v8LZVCcd15OQjrs4LJvlbc30jHA=;
	h=To:Subject:From:Message-Id:Date; b=aG+Xyz+Z0se7k1qGvIx0U4YvNJGH3mZOod4xK4ceB9mDSOSNW02bG7nWnS+3Of9thj7jolJa3YmY0it1O+mx3gZbwHJkxOVD/ou76fP+H9SmB09WkfW6oVCO1c4YIZXrq+ufj8p9iP9QgBPRxa5TiUURzO9TjeCF8NpgYrd/yyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rsf2w0tZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rsf2w0tZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBEAC4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755748193;
	bh=Jse6lZ5KMngC2Lw2v8LZVCcd15OQjrs4LJvlbc30jHA=;
	h=To:Subject:From:Date:From;
	b=Rsf2w0tZK5x9Ej18EuYNj/ZgdP0HYWiFThFfI1UxbuhhAKzwRSWAZb0jj1fGmtAYC
	 JT2ciBd2Ixu7I0+xwxoYdZI4uksnAhrU6rWU81dYRNOQNRD9IeuE0tyzwmE1AG1vS0
	 tdrvhzRl/ivSjip26rqMpCuPevyS5Z7fro1LcdrluTQcd4X4kyYlGIav4zh29lEL6k
	 2mjFp2am+FabqKjC77JoQ1sroicwGLQEBG3I5G0d0UOv9AMPA58njbwaZY36W9fseB
	 wIGw0EXLIw1D54IF/44rgH1XlQn3r4Zx9EVVhykgWDJtQ39IcdwbephUlg0lUcGNHu
	 /sWsqXRXrI/+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E80BCA0EE6
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175574819357.1685.2409081291266381725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a647433991a25158bd308136e79fb9070fd26b32df6a5052f409c663d3f149c5
Date: Thu, 21 Aug 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755748193
