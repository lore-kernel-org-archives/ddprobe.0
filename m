Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F66611E
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 01:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714611743; cv=none; b=TDWX9LFro2DtWaXZVxPaD4BoM5vcua4YkXR0Z8AbIoK/f7Pty7Aj9dgQxmjjCC3u7HLuykvP2VAUiG5vsc739YZEE+Qfo5mlV+AoFVGISz2DHjvgVuwnv2pUIJPW36lG4WD6IXqnjBU/enLD9tpPN2JA5ZpNvAtjSCYh/9nT4sE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714611743; c=relaxed/simple;
	bh=aoxS3UoqE6Gy9fAx/1F529I1kjjcWOPFkVaJ0oXwwVk=;
	h=To:Subject:From:Message-Id:Date; b=TF9DZIlgaE2dK4ZwOSVJfMsU/wo1+tXJtQKYMjjAo4+mTC3JAGbDMn/yrvL0H4t11dkSw7Cq5J/Vz5TTJe0gPhuj+a5NF/BmkhRNVo0ZhW391gF+SrfzQLlOVZ1CKCuEohq8p5vc3AnRNqULXDfDT8iPMCPuG7BfxizJpjO3MBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AYP/P6sc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AYP/P6sc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2887C072AA
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 01:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714611742;
	bh=aoxS3UoqE6Gy9fAx/1F529I1kjjcWOPFkVaJ0oXwwVk=;
	h=To:Subject:From:Date:From;
	b=AYP/P6scesulX0AO+bgk/q3LmDLOSL4TdeEAlu2Yol/OUVmgbb2JiwQKRgAD0LORO
	 2XjT3p6t/15Di0mdkRXy6ujj8veJx/TXyR6jVQMtLn9SsM8eACxlW8j+7e78i9Mq8g
	 PgAhWoaLOf0Nsl6SYwcJzLqggpyJ8q/q60QfEVfL8qU0bt4qHT5Hi5nsc8klcAohSi
	 4AyqUuZAfGDWg8uAcA5uKVFNpEQWzb2w2wzxdRTYusNiNYw9N+3FV49Q7LEh9BL5o8
	 xd4j9QucUftxVUUrvtmsIkQMcKSU2By2AezF3/caYRrNpmLX+ljxC8D+mNf30o2rxe
	 zrT4+FKheLoxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB467C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 01:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171461174279.19242.12304434959019629919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a9ed50a19f13c3c779b2e7844279aab3226635a01beb6776afeb50035a265b2
Date: Thu, 02 May 2024 01:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714611742
