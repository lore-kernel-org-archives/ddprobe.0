Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BEDB20B1E0
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738593954; cv=none; b=nWsJyM5nObc6IpnfP7phyX6In4GPj4lqsgCuCMqA7ptmUd9ZVQe5PmTb7jIkD7nAVBhLyHZ7L/iiKajpvz/fwY7eBIOD1kTdR4s/zRmsy8aELSks7UY9usvXMb/XQg13MvY4WtaWEe04o5d5VmzJmWXvjnKl8m5oLSrIHOj5BD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738593954; c=relaxed/simple;
	bh=dcJLGCkJmDfqEq5XfcvgSbM6a8jbE3zmPDG5U/F4dbw=;
	h=To:Subject:From:Message-Id:Date; b=oq0c5HLU9EgBaPaqkJcF3N8Bn+vkr/ClDBcJ5RbfgSfmcSFj/GqJuAOYXWMT0pDxDj0B2aSskxrEiSR79teST69zcWG36PovfbBtKUUIV0ieasKGbagtujmBp5ovDbEOAOp08fg/Ms/+bvedet3UGLi67UwXqgbj/GHb94Pt6LE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ucKeoq0U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ucKeoq0U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B301DC4CED2
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738593953;
	bh=dcJLGCkJmDfqEq5XfcvgSbM6a8jbE3zmPDG5U/F4dbw=;
	h=To:Subject:From:Date:From;
	b=ucKeoq0UXv0e/MfbRT7u5j367yMDGZX+hAc2HEpuiM6iIV0H1NrwtMAU95B0v1XNW
	 7nf3aVthj73w0iuTcDE8mC+Xce5tYgniGBqI7jjim7wNyXx9hA4x6dMcDGwcrADOGG
	 f3p9s9fYfZ+Uy9N0qt89/G1i9QNAQDSz9yARjQLGNjKue4vD0UdY1IJW0baNubZ+Tn
	 x8HRrxDW+ecEDGZaqavbwpmIgLcCSAtzyXjL3gAdHIR38QyQYwiXMRoMPlYq8Zh007
	 PIcHXcrq6lPca1vuLi/hQPzK8jYOEcJMPfroHpe6xIYREDQs2916bewsdT8KbwAp6l
	 GXisGWEeX8Jsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A06CEC02194
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173859395364.23952.14161586704969466987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22b5f8124520333dadf25d533d6ba855c8dd136e977f5c584251c9fa7b00eb95
Date: Mon, 03 Feb 2025 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738593953
