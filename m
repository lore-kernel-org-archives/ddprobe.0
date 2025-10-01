Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420F7267AF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759331994; cv=none; b=tUfWQXPYRRRy+753YXy5OROxrXtdncL8YQCg+NRqIzerpHImvzKcyPZRpQ7r38acOAMLeVReELRT0MISi2iouvjlh+PQhmxdoTim3UgiBdP+3sYlPSKDEFPSA09L/WM9o4MpBW3YetY3zI9kAQszWSOiZxfpG9NNh5RQlnj/6JE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759331994; c=relaxed/simple;
	bh=tTGrZqkjBZA5mM4279B+AdfHE4doex5HtkS53PGQRhE=;
	h=To:Subject:From:Message-Id:Date; b=fWMhFJDWQHfwjBkC1NK7kD17kK6T/hQTs7sQMNW4zPRUbIrAjRzyUFaId7zV8soOAxuCyaBsXfZPwhABHWsEi+gYW9cPSWSlcGa8TOtyE2muSOm0Vgyr+cTJo9FRqeRh9/Ex6DtRyZBNg5Qxnz4gU/sPyxfZkPZ/q8XeCTOcu14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LpbIZ3pb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LpbIZ3pb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4304C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759331993;
	bh=tTGrZqkjBZA5mM4279B+AdfHE4doex5HtkS53PGQRhE=;
	h=To:Subject:From:Date:From;
	b=LpbIZ3pbQrX9toQ5GUYXiY/Ptg1DygGG0uUwJLB1K6pO44sXDwx2IK/n/MmKITLLZ
	 bWQvavBXFAIYOKLOEFzpGyJSo5gAmyz+dYJSTsnTuPaB4cVhNZcZ8QewV2RGTd0s5P
	 7rmfmI9faMf+ca/fSUMkaosNuIjx/fb5Qr9i0wmrv952dZbe3OuNUwUqihkd51K6Mo
	 vCz2Hn34MbW/K/Z5NJ4aXYRnD+S++1Ac5sxsXtqPXWZuAxgJbrtNS9Lut/6BwpgqG2
	 KCiifw3Y3pYpOk8qpQp/uH6I5o9DXGfowErOOV8PaYA4JJa9xL53QKGmetkH2PQoCz
	 0ogTSRSu4P42g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BECCCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175933199359.18724.3437510832352415881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7109be0580726d223de68cd9254ae9b00a557c7c35b414789efdb740d4fb351e
Date: Wed, 01 Oct 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759331993
