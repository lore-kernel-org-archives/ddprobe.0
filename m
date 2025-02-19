Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C602AE95
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 06:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739947734; cv=none; b=ddCJPsbesQCJ7K/mBUTB7lX7BUqU74Gj2zR+cr/jzl889FdTUEixqkweIRfA86k8B9Q2MDAnW+j4WDoZdT86DvkZOyLHIxi1UZyNuGUc1hhtehH3ZJO8uF6bCUkPWR0YEVlvx5ErL9TPbcJg6+frqPEZIy3XbfAmLg3RUElob/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739947734; c=relaxed/simple;
	bh=DPX9qnBxUdZoIgQ9y0goYWiUqbV1kjn7/FW2LeQiWo0=;
	h=To:Subject:From:Message-Id:Date; b=gjOjGL7wpkKEWtXPG4Fzxq3zemEPjhuqeBuZ3JUViIYfkbSQaM/Y4FVnGTHKo0gPOXr+9OzzVW3GIYarPHj/FcMZvcUbXpLAxHWH3zIF7kZIxhfikLrRByRxidQemxIdll9tKSQaz5IfVBNDFJs5mCjkYLm+7FNyFrqVLLX+Tss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VnNOeB2Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VnNOeB2Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D01C4CEE6
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 06:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739947733;
	bh=DPX9qnBxUdZoIgQ9y0goYWiUqbV1kjn7/FW2LeQiWo0=;
	h=To:Subject:From:Date:From;
	b=VnNOeB2Qbz1+G4ZNn5PBizxGl5e/bscLfkuJz+x++eEWDrCKBpTnRH+xqOIRjq+/o
	 J/JrtKTwy8Hi14NrYQX85eErQHrMf+KxlF9hOTm/004M7xesAlWwKEedHK8IV9/pK0
	 agw9TwjjSpZdpyC3VhCJH1VMLLz9u2C+AHQxclB5vWGnSW7TkfrF/URMvpCyQRuORU
	 FX/223shYp/DCEKV50QeV6pfdWr7k2oABnXSmm6sQOX5NJM+l6siJAtBc8wMK731Oo
	 2HTYpCx7txS06pPNSbTsZpyA83DTutnfvTC/wXwq5wQhmaVamxma6LZdlAd9oXDmn7
	 Nm2Q2ieqQrJdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F29C021AA
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 06:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173994773359.10031.9817830216104107248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f58d541d59471de8ea1ae0197b85cd0f6b717b92567f8d8b80a11e0aec522ce
Date: Wed, 19 Feb 2025 06:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739947733
