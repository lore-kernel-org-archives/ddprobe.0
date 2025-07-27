Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256041F462C
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753657794; cv=none; b=Ap2Pc7BrpsXgW4dw8T0s4ZrUhIl0bfQYUHMierjJqyVS/pF29qgov9Gm6NeQmGtP+mjH43AT4k/VZD2rIHO4cQwHOPReBVSop2N32SW+oQenSy5UMOte+Z/6BJR3NcCShG+bBGwgMROwB12ImyJk5zYc0GqWRlNsSISg8CFz2aY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753657794; c=relaxed/simple;
	bh=NxEPtVPgdLU2L0DBPFjlctPFPOBivKleRtYbe8oEN18=;
	h=To:Subject:From:Message-Id:Date; b=Wm8O9LeNEbAD9B58yEghvYPmjwsVvcvqPVugrpmDlw/XKYVn1BmI/ClqCpbv6JAzJpQTY8U/EImohfG5kargEJ2rB3/gSfwxfvAy7ulVsxzQL7fPnouAeRxnEPYiWbZ6hcxkHCVPfMTw3m4kS7zVtz5M8sEOvF+d0Frr3wwnzBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hlWlTwpe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hlWlTwpe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74C2C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753657793;
	bh=NxEPtVPgdLU2L0DBPFjlctPFPOBivKleRtYbe8oEN18=;
	h=To:Subject:From:Date:From;
	b=hlWlTwpek9fwOUq4HObvqEjAVTsDt/0Lw0NcAazrcjDFzFpHK1VFM4omN6Gopxv/u
	 CWQc112r7YZ+vKltBw1w/paH0AMrLh9I82mzK5ZeYQbOVVuPSPu3kU6M+yEiKIQy0O
	 fUmftYjUxZnf6XlzAD1kz68A25COFxuE0/PC+xGyh2LMy8rK+bO/oMrpZ70EOf4qcr
	 hojkf3P8y3IIKV1tPS9JKz6uF9sFUudBVjjzIUUuSNdGebEauAM3BJxE4r+SSwhYwE
	 mU1yMxFZIQP3+Lxh6FlA7CzHK64IVa8YudUGvfF50+b4yJ6AZmQukuXHYTWr1QOXlp
	 zSosH1DKMwIng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921AEC87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175365779357.5668.4709224221894244505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9919ca12e821b13fcf45da90e1ed5e1195169d24165847c481f31b62704e139b
Date: Sun, 27 Jul 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753657793
