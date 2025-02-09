Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1F1243398
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739144754; cv=none; b=dKVmwSlJ2vxWWfNd/zv9BfZrIV1MnOiL2Ls6w1PqD0MgSphsl0E1DCQQ95MXF6tc1OjJXlLEzXigZJC5R9tATK7GDvoM/gRSEyfyp11XQ/1gfhnU1VnXSHwcxnr15mtT49e4qGQzbzTByvKhk5b5gdqZl+N3ZU+DS8Ej1Uy+4fA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739144754; c=relaxed/simple;
	bh=JRcLRWSVh2fNbYW3grSLY3RbMItAl6NXoJAwRD+dEis=;
	h=To:Subject:From:Message-Id:Date; b=FDcQsMFnbtElztXrrtOtCywt3HJYlJteuJgtcdvwgx+M9YrHNYz8QcFYVz92bSsErgivfs5DFdtfQ4Wa6pEiUp2qfymwZdMFZaUJ5j02VZaZb1CtCljACDfNOg8WmDxothW8J0tW2AbMVWzW1Bf3L4xmDZkKqSKDYCz/46qYlCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NzGoDIY/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NzGoDIY/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE9CEC4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739144753;
	bh=JRcLRWSVh2fNbYW3grSLY3RbMItAl6NXoJAwRD+dEis=;
	h=To:Subject:From:Date:From;
	b=NzGoDIY/r/MFbbtKI40rtcXT0LTqDM0F955yPWvOVDwEDtmwp/mV9onNZV1H3qsv7
	 QoSKS0QocNw1cgJQE2fQEDZR4GGpRO4pVCc+H1boR4KbF8xIOl8cP32l/DT4Adjl48
	 ujxKB7R8fjdOkS57aXRi3SAGZqwATmZYh527PD+LN2i0MB7B+psSx98tz7Ob5F3AVO
	 IPp7Cm3QQqbXnhjkcoBzGpJMypmEImLUi4kTeTQFYjCM3YrvLzYf56+CzWKfSmghsA
	 /hQNmUdBSA/jW7OSTAFZHuWA9DO2xj5tMOsUa2M7Zew6Gm4IRWXoQMyC1JeglA5Kkf
	 X2TvHSBtgvCjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D0EFC0219B
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173914475363.5388.8445218302236344804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 520354cfcd359487d9a49e4fe5f79fa5f29055bedc7869b430fb2575b5837ce3
Date: Sun, 09 Feb 2025 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739144753
