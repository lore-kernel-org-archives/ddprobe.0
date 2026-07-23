Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C238363C55
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 09:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784800174; cv=none; b=Fwi1+QVADyPRCFn+B6Rml0Hh2LjaqEW9FYMld3sIWWUakY+rLjCIuP2J1oP+rUm3ZHUgJOh9TwnyH/ornlgvDmQv1/n4v+VzQff6YbYN7hFCanxVSVYjZxHhkvtKLjaIB0J5sEy3mIc94IimMBgWwGpFExPzkWBs+NW312h0D5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784800174; c=relaxed/simple;
	bh=6wZaAjmkLLnd+gDENKdFAVTjobMtKcRUofVzwBqC3HU=;
	h=To:Subject:From:Message-Id:Date; b=U+LQ45zhWbhYDm/itqDj9tdANsMR1c5LKZAWc/Xu/mxGmOtvR0ad3qi/b05QQqJvL8kzfc0Q9ZVcwiql8OosOsNUUIXuD0qrcenm3KaY6zerpIiOJumiYrzfcZZvZsTihVLlJvwt3wplBSE7B7sEGNMtG0uqDtzYre0zE4jGKik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D4uFyvEE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D4uFyvEE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8872C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 09:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784800173;
	bh=6wZaAjmkLLnd+gDENKdFAVTjobMtKcRUofVzwBqC3HU=;
	h=To:Subject:From:Date:From;
	b=D4uFyvEEy5rDqydnaAWp1YDsT4z8lf7P/MafdwIKESppOW0Fl9PJc66Lz+j+wtPrh
	 gTET/HrL95bjEw9BOrsFKQIOs/oUsvqakiJDTtLl/rXBFVimlkF5EI7vk1GhZvuWqM
	 vGiKzfRfx8Or2q8mIXaDijfxz7DOCP4mnTtA7Vwj6yCH+/8mo1dhFz1No/L+pcjxTo
	 jJvdNyGdfWfuejN6LYM0nxzYZPKVLXXuiXNsEnh5VTgVHpjG+B3fYNiI5vngAceIfw
	 nLBGxZCTwCHyE+chdeAkxZlL28/MmQcmKa9rLBzHJlNV81/1ZybnbyPE6YjjIaqN4g
	 pC1coU9lTTFIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD92BC531CB
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 09:49:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178480017370.26716.316632768043488559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4d50a5458581476276127f2342ecf2364689ae090c04566705d8bd0bde84d2b
Date: Thu, 23 Jul 2026 09:49:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784800173
