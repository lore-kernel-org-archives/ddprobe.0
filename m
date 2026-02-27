Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226713939C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 19:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772219694; cv=none; b=O4IWBDB/hDSRXis5mHMy71cWQsnFzV/n/1JaIZAIqds7gj2cVzgozXgubJwFAM67LTj08oot0vkqEtzlynGUKcDbtNyoq+eCd/4c1wSBRlqhBohHFo82cLux2+ZJZfcwNPj3Tf+DltsFh+93MheNYVdQ/WqLvhNTeRFK+emTVVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772219694; c=relaxed/simple;
	bh=s6dw+VPlvDLy+DD38jY0IEfXp9SGOY7oXlC+h2C8CTw=;
	h=To:Subject:From:Message-Id:Date; b=WEXSEQk6QHaIww/z7zyX9JwFr0jMjgG+nVfbTEvOpMPGKnGo6+lyRsXjebQi64FmSnFaKSiJy5cLL23Nl+ICKes8DxjjWH3WxRhvypZaA/aInN2958kNZqaKxo11vEEgefFM5aqpXfVp7qDSZarY9O06hTB54lcVljxd3chVYPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aeDO78zT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aeDO78zT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7A55C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772219693;
	bh=s6dw+VPlvDLy+DD38jY0IEfXp9SGOY7oXlC+h2C8CTw=;
	h=To:Subject:From:Date:From;
	b=aeDO78zT1Fz6X/sbt/UEwq6ZBji2c4MrNRom+GyIN0vLC83m9yEqyMJWwT+dJT7dT
	 tIFzU+S7ZZloDyQybk1wXg7fyNWfVdKXgSQkmLAIFrddiQY1YpFrJ3fwNu6oNH0Aya
	 1vV7QIRhXRTTT0aTlpteTkhbU3XN4Zxk/818A0cGs031tP4GgVDuKEykiWCQjOs1TD
	 rsCiPXeMCVZKVO4FjPHklRA8ngSZ7kqEjdYxOUcLcQ2oRu9DO0N4XRGowwp4E0FcuT
	 vwCoO7cULQ/H32EQg7I95y31vM0gSpq0ojmhw2/p76DN8pMisEMg9Gfw28gKNxygfq
	 OCmjz+hLaAWgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1BF4FEFB7F
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177221969365.21210.8893121992457588853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dc37ff3ef94f3fbdc079ce21ae62b7083ba903e230394f4f9e99169aee05949
Date: Fri, 27 Feb 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772219693
