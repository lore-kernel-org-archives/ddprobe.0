Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D0FC140E5F
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787860834; cv=none; b=KqzEHVDv70e+bqo568rYDvTk/MC11gtXfAJ2ni26pZD3seWTGD+f/98RKyF0vY/3qdYVu8k4nyP5JBl+mQ+qclsF3IaI2gL1qR3xqhWPZEx77c0d4aHkdZQ8EpWEPWxdZQPZsMJP/PWGF1kDsGw3n0PX0EN4oVMVuRlEIK5YBQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787860834; c=relaxed/simple;
	bh=FShmCnNeDnm6tPFmEf/2M9UDPX+DS/OtBJvuj8gy7ME=;
	h=To:Subject:From:Message-Id:Date; b=sb0u0KdF9Q37/gg/3C/MdBE+3pkj1WNBDSWH/McT4OmcskFiXC32jQtWUj09sJ1uLxZH3BZIikcTzVmJUkH8S3iviq2lt+4vBVCCPNrtRc+a5OSJ3F0u3NcpVJGTF7zy7Rg4m6ZTL6yCVO+/wzNU6VGcoASU+037rLC/MCOqvvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OZgi9m3N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OZgi9m3N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDBFEC19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787860833;
	bh=FShmCnNeDnm6tPFmEf/2M9UDPX+DS/OtBJvuj8gy7ME=;
	h=To:Subject:From:Date:From;
	b=OZgi9m3NI9bsCXS9+A+gioGsUIrKOtJOnNFOnMXh5ohN1FsVS/UE5N/ARQ8Lkt7Uy
	 W9g4ziWtkhxxa9RMESproYrayLO8Pw9SKZuo/DGxj+6Llz91A0ic7Tlrbi3EMLx+G5
	 7ZxksPXZwwkbcubH9VJNfDujPHG9VCRfAkt2okXc0Z7J36ALq3uHhZQ23GYTUcdgO4
	 FGV5P6EocR4X6HtNJKNmPQWuO0SkfAorw48hL5GLFGYviaUgZFC8KWuZPdZMo9qIks
	 EJcIDv4YuEwoiCG7XcI8VXeywd7TPEl3iIEGx2C/PvQAQnDECxuJ1TF10+oqa8nWPY
	 NtYvZH50KiMhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB02EC61DB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178786083369.14895.16305725601409436235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09b57cac42e80d54b18072c1681a7c184087eb3ced26eb346d5d527a99bda7ec
Date: Thu, 27 Aug 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787860833
