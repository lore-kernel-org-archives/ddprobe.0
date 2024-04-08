Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 124E513F446
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 15:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712590697; cv=none; b=b9aYBwKB+F0ftZfRnDJPtrrExjTNPqwOvl+rM94kqHg/+wXOp7FyaSgP/JQ6W1qZNSM73TqoWy7BfVnVy3GvtW4CVX/GC/cMU02E8aPDCCs+ZW90A5bLz583ALRTAxTpOU2VIPdyLs7iJSQUIP7CfyaLUp/KmswDG+4P/8ahb78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712590697; c=relaxed/simple;
	bh=tYc6u5umtxxQBMrXEDJ4cqRaeKu56yTV5ILHBYKzejw=;
	h=To:Subject:From:Message-Id:Date; b=giaIkqwIXnoaQuWEeOOpZ3SCwK8N853ixEwyvkbAvujlN6XnjE2ox837SbXJZah43MgAGf5SFJEh7qA0cf3vHsa0JG+ErjD/BzglC3Af/wSLGu0v9xZ3CY1Ebsc/LXbrEVDJS436vSty+KOwnPuM/pVJ4hEcQ+ukvQp8T36UCAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t0VHh9Ic; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t0VHh9Ic"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87340C433C7
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 15:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712590696;
	bh=tYc6u5umtxxQBMrXEDJ4cqRaeKu56yTV5ILHBYKzejw=;
	h=To:Subject:From:Date:From;
	b=t0VHh9IcLhKDud79trApP1afg7pKAgFJnOt7H3O1J5Riz/F3b+ZYMn16qn01RQGPX
	 lGLYyRtQHRFORQkZMw+S0dubha3a+qDXU2h3DlMO6Wg0k0ohKJIiQ+zqDYpD0Un6mJ
	 HcBQ6S7GUzXdvorkceX/Km7l00satEVzc26MjfHCsg9au6leuPFzx/J6l855fmM0sW
	 bcmX3I179v5z+fvlN9eNbQZ/4rlSBf7pWHtWSRyjIUDRbC1DpA4YTeVkhQUy5sosy1
	 lsoU/RE8A7fliriZ0WYZrymb65xexcSdNPShhlxAEkscSukf7kEyeXAXjZiK1TW+Jf
	 ENa6W1ZAwZqIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E872C67861
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 15:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171259069643.32222.622074268115757661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61128726bc03c6285ea8038ae15314e6e16173b8743456061182101ece25af77
Date: Mon, 08 Apr 2024 15:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712590696
