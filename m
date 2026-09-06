Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41DA75474E
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788699634; cv=none; b=MQfNfO3cBNvOkYhqR1g9R7y6vPQsZj9s+lTljGH+0rbBFdjAxwLOeVufslfEeJWpRuCotmDYmNIxMCBx2v3b8Q+G0Ob9hqW9S4M2AuUJnnR6YDsl6DXieAdcnIk5QYa4CG6gp/ghfsoxFF2gVKOSPc/ISxWidNSTAzyxgG3phuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788699634; c=relaxed/simple;
	bh=tNsi8IY4xY7EjKKUti+FGLTg5WPWKAe4pJi/o2jtol4=;
	h=To:Subject:From:Message-Id:Date; b=Z2UwrnD4ZgFGbN9DCNRW4REqMlmTCRta2xT5NW9F7jWf4fVWhjvFXlXlyj3o6EUE2z+zoMwNGoJnKfstpE/Gk8V8wGUIMZH9980U4q05KS0zhN1TpoYzozt0nToDy+MtisymqR9SLd5vFP9b0GyBFHEUSazpBb84oIdSMOMGZtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=le0g1bSJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="le0g1bSJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D36F9C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788699633;
	bh=tNsi8IY4xY7EjKKUti+FGLTg5WPWKAe4pJi/o2jtol4=;
	h=To:Subject:From:Date:From;
	b=le0g1bSJqWHWpLJ8fQKsqgyicica/T7F2RbY1IayAfnNNzdCi8LxkUd0lKNTKMaAf
	 P1MPQ6xOXA2l5FN4GXyFHQl7RY1b2uYSbd3IbXiRGTrRlzvfLQVm90kHkHMAku6cCd
	 HuW5ugEhlyiRx+m/A6Zq8ZXePKtCY9KdGwm+eeSsYkxIPzvu98Vcf86Q36SEZtQRNL
	 LjAjE5/k9p59poEjmFL3gEn+TGHE26zrWjZpZlgNy46Eo/cQe5dMfuMpp7znJ6O+7o
	 BJ/+P2Fn2B589dHPlOwZRqgZijKrxQEoOCWaC670jJ574ESj/ju/gr2E9CwxaOaPdB
	 0bUdctRcyGcwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD4CC79F99
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178869963369.19119.997187304254477470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0b35d6d176054757c94266344b2b89319187ea3816afc55815d710ec7fe9937
Date: Sun, 06 Sep 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788699633
