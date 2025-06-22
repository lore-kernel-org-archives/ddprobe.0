Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F4FDE555
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750618794; cv=none; b=UiWm3kEj9XNt6AHq0E+NS5q95f2s8/setsB8p8t87FeaTDI+GOT8QIg01ZfUCz193Skpt2wdPJlj6dC7JoHiSjk4XTrsVkiBCCIGNiVNPT3DNjsl4t71SB7ILRZkLjNgGoCDeGL+1FgDRbJ0kxMlqLSBm/Zwe1fMah4NtjOs/CQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750618794; c=relaxed/simple;
	bh=DXRNrWGpnHJIMtHON4ZXIvW0fJtZfJ8fWddQGR8FO/U=;
	h=To:Subject:From:Message-Id:Date; b=UGGErTzwVMdU457nOBeXfKog66wW2ocpMyM3r1G7bACyRl5esTyp4OXSSJjRmYfce8d9uN4iL5z3VmmmGdR/nzrV2/HzZkvqS8x+vV0t+4yU8gjwii6CcYH3NT8QVTnTEbCaQ75EUHK18krqX1FSg15Ww6xVgDytR7FnvmeqGIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GzsXkna3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GzsXkna3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82E7C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750618793;
	bh=DXRNrWGpnHJIMtHON4ZXIvW0fJtZfJ8fWddQGR8FO/U=;
	h=To:Subject:From:Date:From;
	b=GzsXkna3275rk9IcWwYAu0wrQSmP2ilUWELiJRnWKpAlSm/foq7KIoIpMxdeUXtkK
	 Pu1tQsX0d9M3DBhimNLtGl/GfV2kfqfogdk4yViBY/WlBM5Y9nTe67tswzFiJXoGKl
	 /Fn9uk7tLEhBfW/oNaB6zW/5A3/+yK8vOOZzU+pYKaDKv8s4K5ihZR7uZgfTquxtor
	 ue66HpGJeDVPKQVeMlV2Dv5678gGGHTBHzS9yEsF9HqtC21BPAjdzwcdZMNi+IRO/8
	 QJ0UyZOHeucd+HY04OAkUvyzhG/rYqHKUDWBLszSd5tGh0xyiH7J1hg9l6BtPOjBLB
	 zUzV5ez1KNQ0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9303BC7115D
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175061879358.22710.11540212216876463918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2643b4655e17848eb84f96b496ea78bb2ca4415449eb4e9f8743fcc74272ae34
Date: Sun, 22 Jun 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750618793
