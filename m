Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114AD221542
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767366834; cv=none; b=FF7idQo8jvkbP5pCXgUQsjMDyVbyqP21uQkfqbFI4EkVkMgLxIinuA2J6Yb3ON81c7sUaRijA5A7J56DPVYqJxyh8DG9OngPt4QPTIviRFtWGvmWLUJpJTj4up6N3HxvL/Ll/Ed/ZwIuGSHMDWQihN2Ra+/OzHHL5bGEZbBzDwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767366834; c=relaxed/simple;
	bh=vGX+3skPLh+kQ2HRfjBgVAgjLlsaHGD7ARCk/n4ho5k=;
	h=To:Subject:From:Message-Id:Date; b=fnZg/i2jknCPQlN3GoE9B9d0bLF6tLR091GChvcSzewjOjpV/QMiU80FGaOZysCJnMrWiUyJmXXvX00iW1MqJiqjweyJ7BdzdZjGX9cAoL+0HyFFf9LlURWn68h6IMDYEBxYy+1YDbSIrUd9AnjrbXZ2oJOVst3fwHfVVTG36Cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J64IhDT1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J64IhDT1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19A5C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767366833;
	bh=vGX+3skPLh+kQ2HRfjBgVAgjLlsaHGD7ARCk/n4ho5k=;
	h=To:Subject:From:Date:From;
	b=J64IhDT1SGmPB3E1d/HQRtfSXFmiAcmAgsJTzFU+V5nfN+VadEUVKpv/rbYRXfQ7W
	 RNM2pOuDLvbZb8KkHkXcenCB++Ms4H46X3cQ9V2JNxMryBErE3N+nwIWx7+6nqaY6X
	 b1YGL/XiGLfz23zNotQiK5mFTzsyxq5YUgKCjKQ+IYVgKGffMIXnmsZfCfCy6cHp4L
	 rMRUi63zOn2FF0eekfwv9fnVdK8ZJ/xnIYOmP1Yo2QNL6ew8rx1Aj3xh4iNhuoOIvo
	 9tN2l6BofMoOKES/iq51MFkunYmVSmYLDY9ad5+UDwlY1ZWZ/rTf0WbAHMwdsVTFxQ
	 zu//sJchEtAfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA81FA3729
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176736683358.27544.17130761801103289810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea0341009497c36b8085e9c2f98dcb870968317e4745adc9a11ef303008be892
Date: Fri, 02 Jan 2026 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767366833
