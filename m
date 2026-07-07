Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EBCC430303
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 15:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783439914; cv=none; b=EGAoJHMZGeYZgWCVilbsb+NSO8XSziw+fv9wtrY3ujBBO/PUkPAoboMCVxDn1WybEhKlcj1CLDDXCtvmpp6WjG7jnUp1DQWE4xz72QNatDeMQoLcPaoBFrdlLIOu+A0wZ4mYU8RYMsOmpKgl/ng8uGZ63Xkj58woOEzCXL9AhV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783439914; c=relaxed/simple;
	bh=IbmqKAFloNr7Sj9WU3vy0qCFR0h67GmY6/I27i4cxUU=;
	h=To:Subject:From:Message-Id:Date; b=LIPSC57EA97bFs5+4h/eOJ8QNwmamme6HdiH1tVgI+26CA7KkXXWH7fToLQtnoFp6di8LWdhl8iASTGEErKBA8KgcDh1mRTVrHoKW2VGjADZnkT/tL9RJc4jLMVWMMAm/1vNW4SPF2Fx9OOasdJtjlrLt6hY/vmN/Ire7VBR7no=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W2HwhTUY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W2HwhTUY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD62C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 15:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783439913;
	bh=IbmqKAFloNr7Sj9WU3vy0qCFR0h67GmY6/I27i4cxUU=;
	h=To:Subject:From:Date:From;
	b=W2HwhTUYtcACVVKEtULPMKs2CkBEoG1RnsO1INdIzhxpteVaw9VbATAvEUgERhnqZ
	 DKdMkUSVzcsm+ihRdZEGrAELgkdtjVJzsGp2RxHtNLnhSa6P2FgDxPC27rLFEewAq7
	 jhijGhr6xPH2ZdDhYME6AJog8cFMownuhz+gEF9GL5G2qIkyzikNh2ZYHMy8j6MCSO
	 TyAaVA4RS1FPOd3bzKAPG4qbUBa4+NBHSOIcxy518VUALWTLBeciJZ/N7EYS8zUN9G
	 aLuHzx9zIZpWMxoiSRn6LY1X+7S2KvJ0lQVEhIx1Uc71UNQrNMjb+/7QEPplcjhhG0
	 y7KX+PIJsvPOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F37C43602
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 15:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178343991368.23054.13755729487938295487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0bbb7f3c680e7fa9104d4bf6af6c363a60fdf81ee2792272077b4cfe196af7a
Date: Tue, 07 Jul 2026 15:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783439913
