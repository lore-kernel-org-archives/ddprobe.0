Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2815D136658
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753288194; cv=none; b=G6d9w07D5S0FSS4cdR87EBddMPWUj63J3y6Ofoyw2kwEkzNFMqyHQotwLJuXJCv+ExK4sBP1RVcRTf5crxawBmNt9uiH/gTjhVVjLT/IcKljMIOwnYWUNpYFtrq7UB1VC3iyVZmJ9t4QIOpcA8PI1Bd4H/62/dfP6JTrJSvzKgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753288194; c=relaxed/simple;
	bh=b2NdS98v5Oua39h5MokNUrcI8Jr4kfWpqaQO8/ZdRKo=;
	h=To:Subject:From:Message-Id:Date; b=sGITD9A0JL46NHx//VLxEOzEZSL33iORg3c+uv9UbS4K5XuNidpsJPgJNxAA64btts1mkqhLRQrNgi6/UkVH97AQZR7PdubnDPPJW7MzElLa5ctjqj3FMxWb5TfEKKMod9fQ+zKnuJbYlG27SCIGKpgmm4xE3YZ5pc0iRWPRwG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jX4cQzN1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jX4cQzN1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3951C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753288193;
	bh=b2NdS98v5Oua39h5MokNUrcI8Jr4kfWpqaQO8/ZdRKo=;
	h=To:Subject:From:Date:From;
	b=jX4cQzN1hKyMP2J+NE1L9NZuRiE22QyJulb6bluNP7lNRBy7YZkI9rMbkP+/ZysNn
	 I8YkowP3NxBxJ9UWNHeXc87IJtcYBPVO4DRxqmBplWo+5zz9gKXGJx1yCrDGa56V5c
	 pp2uERp3gN77mg3iURTdhs7JSmqMS0xonZj15ohdhStLHDZEIa8kiYqGOm9uUKCc9c
	 twOO+6J0P4/8nHiTz+IFm/7GpOSkRcqJBiUcl+BlR86KK9Xa8FtY8TJCJCjHkWl4Q9
	 Cm2AO4XTiUmP8Qw9Et5fCHmhqKHJ+IQlb8EdtAt2WPakp/M5RNkWaUbZLqbsgLQnJX
	 ata+7vhvV5XXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FFDC83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175328819357.20186.17206992778182270376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3686d350894eb0f7c2ad72911658234279bc49fe0e88fcb7c5eb5127e689ae0
Date: Wed, 23 Jul 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753288193
