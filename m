Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B4D18EAB
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747978794; cv=none; b=oXnKCTqJ1La+VBxshVLrlWAdyWEqK7rwEoEXFdg3h3KaFfmUTkffHupH6T7mbDg/OMp48ckAl45ba38Gltnrkywx9/NdHMleoNVz8pUvLI/sG8eMvVnkmuaLPB8FyniwY7mxyngdqGdHlkk3pliiZXdDYs093pc1He+PgPQfXd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747978794; c=relaxed/simple;
	bh=KXkMyAlXS33NKL10bQDJ0bCa4K3dx6mqdP2qVUrfxlc=;
	h=To:Subject:From:Message-Id:Date; b=YoMPYyEbMduL+fNHUZMJLNheVaE+7ElOPyh6xflTEqf/C5W+1z4aGqdI2NHNPCcAjAq3CfP9wANDstZNAPhdIc4idXeABCqiwcu+voR7GPkb2S9BEkoNaEWWv4r4jSWAbCpzmxInp05GdK5DzxT/uLjp4uEC9I2JzDPMKkDYNIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WcCnQFxv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WcCnQFxv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EF9C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747978793;
	bh=KXkMyAlXS33NKL10bQDJ0bCa4K3dx6mqdP2qVUrfxlc=;
	h=To:Subject:From:Date:From;
	b=WcCnQFxvp1ft4yOZbVRDyTnKP+gpRRm58QyKgYV+6e3wgp5HPusNj+u+rEw02mH7h
	 n9l3oNdm3uz4ap2+3+wC3nDTSdkNfjikH4EyzjbD9+4v6fI0Tcl2z1A7n0QxvxJLRA
	 RZHA2i7rvq+s4DEN7sGVrkQCz+cMMePI8utdIo3Zdl6hfrcBPMl6JAtIOp8TzGJRmP
	 PQabKxCEmD+mekwLm7mK0DIIYHAFYcjq30ZqXvJW6uwh+f435vGujVS/dYXHYz0xCP
	 puuNeoWZYshEyQ+uSTyB7WPnyTGzy5doVrjsU6I4/994yVcjd5WTmAYBrIad9ZuUA+
	 OIJmCJb5XsE8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951C8C3DA6D
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174797879357.4452.11669842666682194863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91fe24eefd7c2df24ba533d0fa13d2171ff34fe3e2a30e6aab87a24fd7692308
Date: Fri, 23 May 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747978793
