Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E8179CF
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727744754; cv=none; b=mqIekUh3wgJLND4XpnprXlNnjBIsxaoCO6x4UHH1GRVXNhUUzq2KBtmf+k7RwKop5JsM/78ZIKTQbYolmUQ6KtIS6r89GcFEPg18HnAhhnoDv5mhqPmRxCFjWu9ywORselVxC3HjvxOfZai0IK4+kHJ48Nbxr6IKAHZq5KVOA/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727744754; c=relaxed/simple;
	bh=qmGAKeeVg5YrHYtnFSZqAD0/wZA5pk40zDMGuw3OeqI=;
	h=To:Subject:From:Message-Id:Date; b=E+zyxWEUEL4yM6zTiE0evIVq8WdZA5pyxzTai6742mdbClKOiJW9TWIm/UvtDCdMUqaKc0m1aptQjEN0L0gx3eWolJbDmVTILpHpRk6YbjkZ1oYD2q8e+xEn2SRCu6c5lwZ7LiUFoOqQv1ZLh6H/zGMbM9LenMeuWdsbp3tBcsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MU5uzTRJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MU5uzTRJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6596C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727744753;
	bh=qmGAKeeVg5YrHYtnFSZqAD0/wZA5pk40zDMGuw3OeqI=;
	h=To:Subject:From:Date:From;
	b=MU5uzTRJsLar1r2FZVfdRUDlxxIBkSyYQcToQ+ZuiYJV9m/zdRUScsek0PL9+XPyo
	 LGahc8EXgZ4BoN+qAidbzLb41RPmcwgr1pAp5U4k2mttPV+ITV7lJBuhb+zexRECy3
	 ZENA5YPJyg7Gh6oGKbXAVJ1bPktKFy/IJRHUCvBlB7YiIRqGRwEPNarCzDwv+H7T6p
	 IUaceqUhf4YctPdO+7UAFPnxur6u3ezMWhXeeipPnPkK0XL62nNCc2cvBGXp8TtVDA
	 8PmsT7DgK0davg0eUp+cTFTqzn6Bl9rMD1yE6hDXTLYsQYWr18XLU1s/tts2ntsO8v
	 T50QN33KdLZnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A19ACCEB2D2
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172774475365.20845.7250892746188452289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37e44ad68271e700f519e550c414fadfa29081df43727811c99a36381c821db9
Date: Tue, 01 Oct 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727744753
