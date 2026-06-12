Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260CF33EAF9
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 08:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781252794; cv=none; b=TLMXJc810Jvb3DR6uWGpQaWE/eVcMCXr44WvWFgSUBJeTyV92hwaV4mCmRnwqI5vZFwRFswOKbkdqxyKybpshB9grK/+TtfljNW4Ol4FzFHGTEzCRtpm4tSxAG18FcOpSf2Zu8deAFZV/0qhUWMPeQxCHRhGmP2WzgpsCBU5hTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781252794; c=relaxed/simple;
	bh=oU0u3W+nwlVtuurP4pP0w47HP3UdeJQKmU80D+E0Q3I=;
	h=To:Subject:From:Message-Id:Date; b=QGEi5qPp331AGm4H/gUQLrrM7SxwI0RnOlfem59wVruAxAUPXyuOQdh9cYgyAF2AGDiP7JP0I536upMwLraKY2aDH8wJ0YYNk3WXfN0bZmvCkQI0iRcVeczXQCfBOI+da1XImrfwT3UzeBp19Hz31fnCYDHbS5LsLPBMNAR75FI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O3+cdnFX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O3+cdnFX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7726C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 08:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781252793;
	bh=oU0u3W+nwlVtuurP4pP0w47HP3UdeJQKmU80D+E0Q3I=;
	h=To:Subject:From:Date:From;
	b=O3+cdnFXgjzj8lbcqTw8c73vOCl/o9EdE0yRqu+pG8tMft7nBrsoQdvbDB4Dqo7Zn
	 QY5CdIDNsEljm9bAR7sA/1/PAaOf0kTTyiri69FiSibs9cgCiWpbcTk4AjVZ0sGIQl
	 Dk5MuMahMaTkQkLtDiwbVXz4gDgxXAx1a5LRohZeFYVqlvTmNvEAqQ5VA6SJZ7xe/y
	 IEQCJH7XwyQ/OxnhVWLirgOkIgvxC5BAUo5godqxWe8j0EFTjNfMNIT1o2+/cNsnJD
	 WHgkpywTRp4HQnxVKvnqO24CaNguOqaQ/9abg6bgjNQ89Chv9dvzlMmjrvS5fG9QQW
	 +FoJyQijF32+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEBECD4F2C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 08:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178125279369.18474.12238297727701359813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02c7889128003fd8e89883cd6813259939365ea613993ff486d12824dc7abe65
Date: Fri, 12 Jun 2026 08:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781252793
