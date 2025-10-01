Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A403064A7
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759352394; cv=none; b=DfuBAWI5eFrYPRZyJBGgKIkv0qDBh2EHAj7cHqa8mkttTyEK+B4ROJw4DluGN6z71iyAmCC3DFZS8VHQIaBK0T8RI5e/Q9/Jw9LT1YkKIAaGDc589aDU71nHfTsP5Q9iFRzX+I2erRY36Oj+8HR9HrWf99mNZFtfw6HzxXO/XdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759352394; c=relaxed/simple;
	bh=RXTovSKclSiw11stE+QahECKJWURjPDMPtCES8dWYso=;
	h=To:Subject:From:Message-Id:Date; b=kw8+3UtIQAO4DGPpt+IdnCoRttGXv/SL2IkLNGrVd0aIfeH0NeYoOrPMJ/jWEIgFocyBQ/Wjv1PxwJ4Vzo7cftpbOSZWH0CNEEshu4Q/gLCUkm1e1YqO5e49gLHC6fl9baxIcqT6mnsiZPL/WymEjaExSiodgQ5aH9vwluxhMAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h8gReCch; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h8gReCch"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D0E4C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759352393;
	bh=RXTovSKclSiw11stE+QahECKJWURjPDMPtCES8dWYso=;
	h=To:Subject:From:Date:From;
	b=h8gReCchCO/xEkzyZ2mOwnTmIr9/Zb+Bw+Ohx7kaTcH+J7XcqDAGUrRIBOQI2I4d9
	 AP9Rh4gRbbRdJ6Rzi7AQn1d5JFZ9nT3eYTRWojMgMsX8FkJC8zZ0lWSR5SHcJc/evD
	 GhyGYRISwxbE3nj0L9rxMSIW9rAuc4Je/774DjuwFFG9kDYjRj0Jc3LW6dXXSyChtv
	 OLqw3YtAa80DR6hE5nboAc6kHYZm+myEKBdP/xoKiWvyQM36nVefpVRXRpQOYXS5+6
	 4S6X+N4dz/gBMxTky/cPJQUuP/MZmpi99gJQsC7vcyNhkPfxHodFkMsSuyWdU3YeiZ
	 U+WTwLxPqdg6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9F2CCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175935239357.32005.18337891542333939055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3e6f04d460046f11876914084fe85fe9d4b268490e19a60df56180b412b5dc4
Date: Wed, 01 Oct 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759352393
