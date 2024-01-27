Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3CB6D51B
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 12:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706357297; cv=none; b=Acy0OOZYxfhSN/PyA1hmflO6p3QVlQnpjpWxMu3YyX7a9O7sSglc5YQHdlK0WaSeqpCUEMJs8oWnn4SfcY/DLfZS8pH+P80afrHBaIpEYAPe8sfZjNoPlKGFtxtIwI4Ymaeas2wyDUYrNjwqMAtHNR6kW2dTR5GXKvPPnr6JzNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706357297; c=relaxed/simple;
	bh=UzeqVpITkLUipYJ427isopadjuGi5uHMRRlUw2oXhaA=;
	h=To:Subject:From:Message-Id:Date; b=bEBOiTIbBwOMEcFu6iNpPETSxzk/dgRjRqSznunjWfO4X6aOj6wJ+IDlu/mC4IGNV//aO/6M0KfWwDXQBV4xDrZrNq+jn5Zo7Trqd1rlz8pxI6xzReeRfjW4GuB24tOvKKbvxVSVnDgF0nF7DuzeVbmOJtuXtt6UB2esdLlC1+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ivkO1b7l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ivkO1b7l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ED8FC433F1
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 12:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706357296;
	bh=UzeqVpITkLUipYJ427isopadjuGi5uHMRRlUw2oXhaA=;
	h=To:Subject:From:Date:From;
	b=ivkO1b7lf1/52pU8J57zvPsI4ybNDyf1m6vFXrZg3O6KABzbs9jIYlOleCk7XVWYR
	 BaWRWMplPnGOPDIDhePNN2CGFy5xeUC42KYQj7dDSdE/JdyPRq6I8MmRi8FjJdcPVJ
	 svxlbSAncR8koLxKLBEbr9rCZNIhy+qvt4cpZyd4jHV6/MRCfsWWnIm8cM5C4zsdA2
	 3P0auEeaWveJbVVxoRA+aVGesSRZvLYFYrRGi+AJLlTD43nTla/kp2TA2EkARfiVVO
	 Qakziygdv9pCBdqP+rG2Qg9UhmZzBf8jDSI2sMBIPGDaAn/iY6s1WU3prtPF2aKVoZ
	 5q4cg/IVug1Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62DFDC46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 12:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170635729638.5388.7676216678908531963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cf322761a320fdc980d633d238f486ca92e47816e185ca43d7849b6f6a15f53
Date: Sat, 27 Jan 2024 12:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706357296
