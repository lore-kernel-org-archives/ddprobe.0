Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31DA82BEC5F
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 07:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777188454; cv=none; b=U5iMNXePWEzQUixoQPMPedNXndwfOcvzooaHORUyT2qtA3IG4V/kOfk3Nnaa5x3X3bqVFbUj1mCJUzPQpFMP8lii/v0ZUhXX/FccTIqBGKSOVmLTpEqY/gDtDeb7REMA8M+FQ7T8ENCMPAg1iuTfPHOJ5u0xo+6J6aLANt3uMqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777188454; c=relaxed/simple;
	bh=UmRHxokKinuY3chKrRFTFPgJjOrghdogrj9BncROH7A=;
	h=To:Subject:From:Message-Id:Date; b=pwr9UPk5P7IlT1tl9cdOReyuz09MWu6TTVh72yRxlkXHg1Ws9tKeSS9SmIor/pCUiX27GbTFfRLswa4jh1S48VjpP3+6F2mXCAw+/QNx7uxlE8+zZ//IrMwoIP+sqoDeV3og7v/Fxz9nQ4f5d/0ieBH4EVolxq8Zu9I5lsPHOI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OeKQmjr7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OeKQmjr7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1258C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 07:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777188453;
	bh=UmRHxokKinuY3chKrRFTFPgJjOrghdogrj9BncROH7A=;
	h=To:Subject:From:Date:From;
	b=OeKQmjr7+YEpH2S2fKI3eh/AjA2X5ci9eHJx0LUAK/QnQnQ1NtSAkmAbRwmR6OOqh
	 wlOtX9tZM8QcEp7tBT0lRHTZJFZnfjkJOQmoB6US9hWTfhJng0V94YGfpAQYqXIdik
	 Rj7pAP+OHkXNn3Tf6y2EvbevA6psQFJgJvE8hC+MqTQZt7YYISnyTGm+sx3KNoxIZr
	 AX1ohzjLbCNUNwVO0j/IH3aUHj7IFnp2z0Af5kNUUxoF+WunNl/V3s9EHPQqJUhkoN
	 lcaWSFgwHhfbZoHiwdQTpGH9blJZqnXPdlPEaBaec3GkkD/9AoZ4P3qYUgvScB5Q4H
	 enXo+gtG418fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7B5FF885C
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 07:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177718845368.29825.11071608838181069323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aba38e60aaf87b90976bb9509887df4dbca56547925d60ea74a1add731ac064
Date: Sun, 26 Apr 2026 07:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777188453
