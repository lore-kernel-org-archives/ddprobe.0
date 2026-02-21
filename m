Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14575353EDD
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771692894; cv=none; b=sf3XW0WaxeIqRHKyo3d1GIhJMsJ6cDzkn0+z4XnHHcNgiejPV6Mwbt7YdhHBicaAevNunvbq9DlxmUoCumWAa6a+N23a7H0hSvT8Xho0t8WL/eLbpRwAtny59WxzTUMErY8Vn59Y6h/legIRd5qhibyYtFE+F8V+03rOj/aiErk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771692894; c=relaxed/simple;
	bh=1AIUhqJsMLkFlbfyXZj9/HZgtVp4vrLrZZeroT6qDwc=;
	h=To:Subject:From:Message-Id:Date; b=Ansr5nt1Yiht1xkdTAG3Ct6ERDH99OBf8yCD7lESqNXIDmQNBbRZ7WT5J0SnBErVf+poaH2u7AZXlW5D5LWVvKL+YcLaBXmnKRWLOfU5QshELsfb8d/VTqXoxH32wFXf6TQ6ZVqGrqGARHpIuIc97Zqx7CuK7v+DKlzorpyL8/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AYYLFJkQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AYYLFJkQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72A4C19424
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771692893;
	bh=1AIUhqJsMLkFlbfyXZj9/HZgtVp4vrLrZZeroT6qDwc=;
	h=To:Subject:From:Date:From;
	b=AYYLFJkQK1kR7H7Inqlaatxadhfqn2EVZ11gYN0V6uMEaUKZc1rArARO54m5sQGfg
	 5iodpfpsjD8E8FG7RXznIgOW9+Kl/ZgaenoLwUWLkH/aiXmSuoVC94TyEmDuiDQ/Lf
	 6X3BTNjiVA9qXTx6xk1ps7DsQd8zEryMKNTa/k1zH3bEkwGjPpicoXO131FZ8YKalY
	 athUBWmIBeFpvjDsHBX7lDbJ0yZNAFqcrh9tDy5xoEu0h83RN/jV5fsw/08oc8bzwg
	 JQ2dpWmEL+gjf5Krkn1xfLUc/7SFqmcWjtPVPkpHG3+bd1pgtkM1iZSzSyZwzmE+aK
	 qYNkNaFvZU9vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912BBC61DFB
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177169289358.5301.1620135159234602586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73628592a53e4d18c712fd3d89c892ebaf9f5c42173a5cee5260c4ab4474ae11
Date: Sat, 21 Feb 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771692893
