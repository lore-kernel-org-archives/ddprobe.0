Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A8902D8DC4
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759832994; cv=none; b=XhKs/m7SPCQPgIIjtUOOnXl5hX2JDbufRDntxZkXH5J3uWdtkrOLRoefQkH0nZUtnxDtTRDXHL/3GiBJ2N3COoxah7ADAQQGWCt/Xi6HjYSfIW8ZPzewv0OOD8kf1VA8jlQbV+AH7C4khdVOXmxnvN8rX1aDgLASPyK472cKfKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759832994; c=relaxed/simple;
	bh=dFpSXXEB7/Fk8H7oeFfYBRIOS5nTgEymiBQmFK5Qxko=;
	h=To:Subject:From:Message-Id:Date; b=aY1xSbZkCoFGLjp1L/C1ffFZBT+hXk6nNfSScmPaFV5H9tes5iAGjBX+qyCWjN2//yYPggxzRX2eWpjJbllHYH1yz9BDw4fSAuI9WU1LDWVlQWcOMCVQ72FL6jICHCLqiQDUWE2/t9KOi93IHb88SBGXtCyUQ8/njd6zNGtTxqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ua/aVTwc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ua/aVTwc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA884C4CEFE
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759832993;
	bh=dFpSXXEB7/Fk8H7oeFfYBRIOS5nTgEymiBQmFK5Qxko=;
	h=To:Subject:From:Date:From;
	b=Ua/aVTwczy1aJwK+0KFxAs+Zjx7tahXwSROykfh6L+XgrdxCFWTLQsaMFBbks81Wa
	 8KXzcktpctgbV+6V5HOhGKf889afdIkdL+B2Yn7DUKhh86Y30bttxeKqRAq/ifS4Eb
	 S2e7R/TyUbp9g86QwEEn4UctqhuJ2DE4RHuxtoFhgw9k+UJOmLgdJrQQLPXWmYA+uN
	 1Tudx1JxOpZWvtiELADdIUS020LzNT2vq9hpxiLuYc/PfgpTJnhXM8vtiMa1PWo6AZ
	 QkGfLJEL55PAhHZJlz48o1iwJJ3ZsR2BoZ1apSzfQYtJxHSqNjopiEMfE6qXVyrdKK
	 7NYQp3gciwMTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92611CCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175983299359.11826.13511166217732226844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff64a0b790def675091f8febf443db6f0af68585e9007e51cca4184dd913e587
Date: Tue, 07 Oct 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759832993
