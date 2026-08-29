Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7391A38F9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787983834; cv=none; b=uRMquVIGFvbwAAO2ZnWxsLIXBSAtCiE3zAADaYymxlMI2BQwjMpjKvZEamr03ZKwxGxwVgw9ceChaP7m65zknOdEiyExiQiF1o/EfB1skdIe0vOih0kt9osZaVN+/uY2ZbDpvF/LK5JzCzbT0gGblm+6yG2cTdSsfxjKsgkf6Q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787983834; c=relaxed/simple;
	bh=HV5Xu8+Xfbve/g0kOeYuOiEj3Mb91skrqqECXlRCAz8=;
	h=To:Subject:From:Message-Id:Date; b=cVYCFzsoT4Cqj8urvdYtuXtgSTZS0BDNYSjYHF9WOHW/xvhl5CjsNmEb6I+gVDueg0zxnkyeVqM+VgkWbP2Qp5XdRbauBcC+t6HVvhxtIaa4Bgu9sVVmYxjVoUFgg3k3a33XQF92R5K4QoOz/HmShjQ71c61EyL19JVcEGzrBb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sw/QDbXr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sw/QDbXr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D63B9C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787983833;
	bh=HV5Xu8+Xfbve/g0kOeYuOiEj3Mb91skrqqECXlRCAz8=;
	h=To:Subject:From:Date:From;
	b=Sw/QDbXrivKFOsINY+LF/P32Jcjp2weD6Y6mq2uqcY45OBkh6Oe/AojH8lk5dNp/9
	 UqRRevKynlpl2VWXcGgy2jUElgad+IXAy68RdVXpVLZbvGbqcfYen9sdKXS8Op3afe
	 ZdynejYOZfyTHy8mD4smbmv5B0wR+ErtWwN8NRAn1P31opCe12h3zKzAnDJ0frvmMv
	 JRCyScaHw1o9qWe1IPXmrh1FEvfhY6Y0210PsWKZfpMjhYP1v0OI0yK0QydeII1/v1
	 FzAJIklWvSjGIOKyn9JPe8W3rcmvCju8d7Ztm23RHOtZIjmm5Vo+I15ylRpERKtpPy
	 Y3R+W5XUO1UIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1454C61DBE
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178798383369.25741.13183779175975574861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a88003537befb57fa389c0e2e84386daa942265c52339783be2250cc89e0ae41
Date: Sat, 29 Aug 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787983833
