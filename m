Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385F02C326A
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749752994; cv=none; b=dIwJgOGYwV+GogP7OtTJHKfax48ACHm+NzZiNRSffX/WmEiEeHhAa4w5kDESTnAHRzeia83BMnlqW5hJ8Mm4a5m2PMlGtUAJd+zOvKb74URyJ8LZVswf4k917e9QRop2ZS1czht2edIXJy6l0QldURA1XRb89XoNLIf0wymSTo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749752994; c=relaxed/simple;
	bh=xH9o9iQISLRhpZa+s0TZLhQC5XmrRThoHqnhkPJwapo=;
	h=To:Subject:From:Message-Id:Date; b=rq0Qo51E+HVuVLE7WDH/OI7iBt9vfmpjdRkG7SeJHlMMkg8347QSHCgtM8vCfX0H5NmKyb7uYl1XUDDDW43uSSMHqrgDhbnfkV3AE42L4srud7LtcsfOA/OOtlClulnV+yYEfxdUVDkEh/cZBEZn+11vw7xvjK4bfmOt3v7qUcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iFqm9Lde; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iFqm9Lde"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5347C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749752993;
	bh=xH9o9iQISLRhpZa+s0TZLhQC5XmrRThoHqnhkPJwapo=;
	h=To:Subject:From:Date:From;
	b=iFqm9Lden387vQj3FyclkOqHMJhzq7QoZkeK8/aCyaHFAob/WSsNLntN8uiL37Y3D
	 Yun/0uSG76rDV/QIm6QZHqBDAlSF7IynbJN/uUP2x7gcM7hxmpaDfHjyh1GzKbzfI/
	 1GwRw28U0c7zV5jZdWkRI73L2d8VbflGNhK75VBix5QV+tTZikql/d6jk/JrtX9JRh
	 L81ZqmxZ7AmLZnMsqnES+KQ/kocFP3ATOGs/6eug8XGnRABqcFaVKLOuQwsA4yit/H
	 NduhaNZY75F0ZwW8CYVWd7UMYGD8Z2N4h1MOsSp6ao5UO0gbGGmadDYW8vGVWJv+0Y
	 yAf+FNMMeiKpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B0EC61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174975299358.22144.5691579776480262847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 350af028156243a3a26742c562fe17f849fb6806412e5e35a46142f4ecd62fd0
Date: Thu, 12 Jun 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749752993
