Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0736D2C15A9
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772971494; cv=none; b=fZ31jiUxkioNAbZ/fR4vMooVVENKZDPA9dPwxhChGMA8lFKli2Z8rK54njy3MwtfS4EN/SLtnYt5uT+6tqPvO/UE4KXObUb9YQlVTwQ27c+lnuvvbUCJoNW1UpS1PXm3qm/US27tmGn/6DQaKtIld2VuLtxn2Ukg4Xhh1m9uqVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772971494; c=relaxed/simple;
	bh=3PvdtUi9/MwmZtbvgr0wV/E+BdHWjapRpFRaCq2bAFo=;
	h=To:Subject:From:Message-Id:Date; b=r9lQJdofCU2noYVOPNMYJaxBmVRx4V3flsXIP0lNTVRRhwoSfJYQsLOoQFp8dqNjN4OluOXdTqhev71sYCVlGII0z4zfdNXQh2Q5VggmgEaBYh2+GwIuKs+AkhywOtJQVdNXY/w3Wwetkrwasu7HIAdw7lVT0MQj8cLR5r8pZpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CyAdCE3s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CyAdCE3s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5724C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772971493;
	bh=3PvdtUi9/MwmZtbvgr0wV/E+BdHWjapRpFRaCq2bAFo=;
	h=To:Subject:From:Date:From;
	b=CyAdCE3sGjf7eQyL3vCa6TnLS4Yvu1VwspykRduXj8gP4B6BU3r4L0ENUxqQzVKn5
	 H6n94P//WAg1IuqSCMNM87w7a6IU8hTDWcqscx7g/qSrorwRum+XffNO01voPGdoFw
	 r8LRCauMlsnk02pK+np7ItjBI4JXttgMczhAOWNgn0tT37HS7iRKX3ouS16pM0WvyZ
	 iTetBqfP6cBHkIBxTu9w2Lj77WxkEurwr2O/oXoZ7wm7hFdP1pdGa3nSdpLsKlE9QP
	 OnLMXGR3LSUVMR/hvDcUfdpD3J033nXF5OkRHFRLYi3oSPJMeuT6bYnXVGwQh5YflL
	 98qVHcsUm6yNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C8EF5513F
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177297149357.29083.335799896995998220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 004f1a8ea8402a253258698558e51a16474dcf8f368eca906374881c79db47b7
Date: Sun, 08 Mar 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772971493
