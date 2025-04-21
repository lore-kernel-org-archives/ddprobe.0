Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB642110
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745210394; cv=none; b=h7q2oVE23RiM/eHWlg3pJCsgZLMshSEo1p79eyTz0SY4MNsAenbD0n7PY9EZWsQhHgUBnh6/7wOqRICDGseiKmLfKQDDnfnBQQaIOoKF4ahjXpGcMYc21xdLpUX3txvx7a5WILtnK3m5AiTT/4U7uNGy7+AjptYAQB1hLW18j7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745210394; c=relaxed/simple;
	bh=mmLjci5XPWbxfYauCkL898xopPgw5PoMm1UxCfuuF3Q=;
	h=To:Subject:From:Message-Id:Date; b=W3uj6PuVQtaR6zFffgnUoFt4ZeHITHgNMAbaWEGskBnaR6Cn1NN5j4eaj66/FRGzfYopz59SyfwelCmOhESMtZkYSBJ1GfF9vCN422gduOIo8BuINOEdq4p4UpGdfKQg16DJkxQ4uqGudJbERjzqah92Fyem6P6pEZYLGD6stk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D9+nk05X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D9+nk05X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA154C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745210393;
	bh=mmLjci5XPWbxfYauCkL898xopPgw5PoMm1UxCfuuF3Q=;
	h=To:Subject:From:Date:From;
	b=D9+nk05XtfOmU1BAMfbflYQJq5jAAjiEEeyeJwOuuUwUNFW6GjTm9ZRDpgFFzloYW
	 bmr30m9sd0mGOBw7KExEZiN7XnQ9/FLKc8V+tCtdhlVWQtKosaFqFVapNhgHa7JgOD
	 jwO88RVzP1ZPBctrGTEnAGCs0L9399efbiR/pezINVsPSTonI36pqeETOlJxI3B5Rm
	 R3MDMl0/JspWYEAEtKeEKcv1rTq2LRU8+dC2gVU9wCnX3ahZTsu1T/jZxmfFULfNTi
	 TBQ4H4P6WMUwMf6lFQQOkIVvFADB5NLVCjaG4nCjHXx+fQTfIGq2lvQGYD4uYPhnZF
	 IxlSExi8cKkng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B27C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174521039358.9149.14565316908481907327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbc579f8c15462d78e7d5c8f3f026d7d0ef57f23061790af094f9da9c48f253a
Date: Mon, 21 Apr 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745210393
