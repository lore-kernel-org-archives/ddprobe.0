Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D57269B1C
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 06:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773643494; cv=none; b=u9Kr6AEvQyWW5exakqSkOG7lKHUf3Y2tE1/mRcsEszf6fUi/UuP9pg3/t7Ty0t/VBHvKoAj2bH5TSrnnpci9FGIcXZV1K8LEEM/I5RndMn5NM77cXsG0mP2RSCgpOK6TzpBH0oYSqK4jWwMnx/tfqD0LRs2KxjfFA++wqlRdq6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773643494; c=relaxed/simple;
	bh=UtesLAFBz4DBlzmjTkLgb+tktb7zRcG8R9btlLLNHo0=;
	h=To:Subject:From:Message-Id:Date; b=ouXLMAtd2j0eZneEqFxn5rSSuwN0sUGIGBUYQtoAZOu8DciiZyGPk0KcCFtA4YCKo77CLKALdw/UWCQBJl4cg6V9GajF613HoXhDMANax+khyGQHkVDI27Ad2zREd4eNxU9TeS6H8JIQPadrRyAUDh0mr1k+9RsbnSzoes8QODg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pu6Ffo6+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pu6Ffo6+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F01C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773643493;
	bh=UtesLAFBz4DBlzmjTkLgb+tktb7zRcG8R9btlLLNHo0=;
	h=To:Subject:From:Date:From;
	b=pu6Ffo6+p2c19mjG2czmLTahRsubyXOlyIqvC/COq8RcaOSIp3ZKSc2Kx7IiJbsEk
	 e7ztoyfoTQgC61oFys1mDMiEvlpgwSRsXAa2wZXub4rjS90t1SRrWgcWIVGGUqq31p
	 kluVCQHfPhIzZnlQ+hb7nY+YYmEvYKZc8Ojsk9zFIPaTHWhmqVvCrjuHXZoCmebzny
	 9yH6BiXofsLJNgUiTFhYz8Jkt9xisJYRLWIVUQYZ34d5wB2b4f7OEWDj/SRlfJhwR8
	 K1QvgZIBfotf0IxJWUCKn7/CF7YmB5Fzw5pgIugU3wVBnInEAFgMrmACbBLlBA/MSb
	 ihytzsd6wuicQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC5EEFCBBB
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177364349358.28773.15244265979646195436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d217d3845ba7235cbff87bc27393392373be10fdebc836cdd0bfcfd222f83b70
Date: Mon, 16 Mar 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773643493
