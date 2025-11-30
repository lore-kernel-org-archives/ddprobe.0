Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AAE32C21FC
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 20:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764534774; cv=none; b=fwh6beqONDF8j2LciqLfernEJyImVrF+SyH6rH9xUNSfVdeSrAyFJjApoZYFw5I6UGTCT9vqByw7j2x1A79WinU1gjMCKGc0fPdIueUvtZk1VHhOkXphbDN1Hx/JaUdlNZka+H9kVnYF2b6W/UiRGqpVBkpdwKn27HBe/CRrkZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764534774; c=relaxed/simple;
	bh=2+a+ScQJVyQSiu8tVb3Wg9cz9knknwPvj0BDQHvseB0=;
	h=To:Subject:From:Message-Id:Date; b=rlCRhpEjwXE77aM/95u1fehK458nHVGCAss16NW1lgIOTv45vlZIQ1wmC6vvSHFrmViOLU6hchb3q0/Y7KxLbMBhxhb3lOz+MvgifAY97zcquA9PKwjNNojiPWlidegR5dFd94r/tljNCdVrkVHjtkANEsX0awj+JlKbCI8GVfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TRfvHxTJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TRfvHxTJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD91C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 20:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764534773;
	bh=2+a+ScQJVyQSiu8tVb3Wg9cz9knknwPvj0BDQHvseB0=;
	h=To:Subject:From:Date:From;
	b=TRfvHxTJcuELre/OT7IJB6iz2xR+Rkrf8pTzxnzkoc869N7dVz6DJrOH8fCV00kYj
	 ocBxfM8LbDHJBq/kukMFzr7vJlx9lFH4FjjQOyaAq6gAf2TpODG6R4pSW7GyXOQ4gR
	 U0IWfapcQXEuk9FYKlRM1Zbr81rpYHyWKoT+qO3I1KtorYww2Nl6kJHi08uLV1t9yH
	 r2zNkggfAC74XMKJpeFH1ja8ftCMQbG+xMNeQUOdWT8a3B8R+bKPnF/0eS4nNsF2H4
	 2qZDDFyCXyEM7GMOhitKYYnr+cedPLPox/qnkMeKuFfYsnTREEVK0KZFfEvRXUJZw/
	 Ixie27Gv8to/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9688ACFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 20:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176453477360.10430.9908427471688646801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd42c9f737edb5ec08c68ee655cc04c7eefc97e817991d5759afa383b4059920
Date: Sun, 30 Nov 2025 20:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764534773
