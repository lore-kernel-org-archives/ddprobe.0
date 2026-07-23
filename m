Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76D1C39D6FC
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 04:59:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784782774; cv=none; b=icN2upbvmbBPnhN9Tixjb/xYeZ8Dxpn1l0xJ//UblFiGEAjmUS+Umg2LW9yLs4KNHvvtwjjo61o7wG3J7BNfGU4ZMDVB+0ru9UoTsR/pYS1T+/8Ape5hTqkxcPbwDmRG9yS3RAmEknDq017AtHgK+7p/n+tQwO1hX1cBZtGWRms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784782774; c=relaxed/simple;
	bh=C8AXU2JGaDXazfgMrhNSeS+6Vyf2gNaPQpLNlsYBqIM=;
	h=To:Subject:From:Message-Id:Date; b=JrbL6mMHCrvTl9M8FiV4WSfXYpWlW3WqZpvTfvJIv8SdWAKbbLyYhFBwHPuqtRQ2ho/CdZSAbZylnaf8Oear0soN3bzX1g03YUl+DioE1N1FfRdkp3oif8Y/WHSbeOPEJUNj1GDSTcJoUNIi9IhyOqONPJL1cxbz49VgpIBB6vY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hXtYddiG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hXtYddiG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6969C2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 04:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784782773;
	bh=C8AXU2JGaDXazfgMrhNSeS+6Vyf2gNaPQpLNlsYBqIM=;
	h=To:Subject:From:Date:From;
	b=hXtYddiGBDXf5QDPQCNXhNaBoFrNxPVT/4tEW1PPWia1v/6KngQSSP1BG5RJIG1qb
	 qX1tE9CjCgZCDVhxVBDtqqkcr0uSjQWETMP0IiR7mzGyLyY4BvGnoQ2DzIFTFDF0dT
	 zbJUzbA+jXCa4c5YbH99TNY03/Zy0panyiPBAjxWivzfePbtifSLrKlIgmf39lW7Ar
	 v8jP7KtyqgO9UK/YxzOHLbcDNY3YXaWfdkkHFVvOU0vG+31i72dZxH93wZoQlfzQfA
	 cbUO8AFhO/8jAyAQBpA2RQeQ5h6dThuHZHlELDtwaY5mICY4VP1jLPIePuwX7ByYgf
	 2tVm/0RbS4BfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B24D1C44524
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 04:59:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178478277372.826.3594233807766163422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3998b742d07682a348737b16d94586bb35b8816352b3effa7ca679ebfb0923e
Date: Thu, 23 Jul 2026 04:59:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784782773
