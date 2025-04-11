Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7DE214A93
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744387794; cv=none; b=UAe7ecZUQO05vqirtQTSGI8uNhipAiO38vkZb3Yw8vxwk89OUD15FXkbra4p3TmY5ITyPZe3XHbzKehxSiXw74gCnBdyhhkdhjdt/4BqujJgC/WuWnA9zjojhtKSXwlniOGUWu3kITo99nOSvXtkjVgb5OQp1zAc8NmZVlRD2mY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744387794; c=relaxed/simple;
	bh=tTUz0dGqMpqtV3PfQyj/wFSi9ZxCOy5/0ux647+Xd9g=;
	h=To:Subject:From:Message-Id:Date; b=e3CbpwevrQVTZeyCnIFLS2C9wCxmdSTSZwDfIkc77rCyk3unm17zkTGlmhJPBbOMIP4Wz1Yt03OAbhY8o9EvuLOx3h2Gu293t34WaZhaCp3KOflsm6RsOyRO+LSP2gbxMZ8h5Gu5vcBE/PyG53jZhU5VGYrYlrn9w2q64S4gLVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ht7pa03Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ht7pa03Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B19CAC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744387793;
	bh=tTUz0dGqMpqtV3PfQyj/wFSi9ZxCOy5/0ux647+Xd9g=;
	h=To:Subject:From:Date:From;
	b=ht7pa03QqkEkuE/ebXW1Dz483Ozb4+ElIbTdhq/VRaYESyZtf63zSDDLkqymuCTH4
	 jpoJ/7yhwjdcA23G8J+lWQVxuJ7ZicDbJv/CsuAClVLB0tpVDqLBfnatfGSG3MoGKB
	 +NU9b4Yfexwk5euKZgR0VQVkJlQi0yir1FofEm7BR8rjlDMhkoimYBsQ5IXd3HDVEt
	 8cGfseCrMdJbHo+5S5DrRN5MWbjPy+HJSJCUKN7NywOR0t1Vio7arJiY/iGM/umrRD
	 W7/m6lBzea0rNMUUce+IDZpcruSyVfBmWZME5/rPjIwWJR5JHGlCUea2pX0QyZUdb2
	 NAQkYfP88HUkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F1ADC36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174438779364.21443.8064750658206182315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc8c3cc9938051c02e1544cfd6d0bedb39925cb6b500a944bf32f35314b0f2cb
Date: Fri, 11 Apr 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744387793
