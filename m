Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A5F37F758
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768832634; cv=none; b=OB+yo+ZlzoK0k/UIptegoTNbi0gaYAHN0UUUbN/4DNjV+0f7Vr5+eq7AGdQ7m/Qqx0g72IS/DUkRyM9oUnyreOFD2oY4yBK4llGKGGDB2ndOCkkl07BIERds3F07YV/kHlIwY22lPjuc9p8xaQGdYoTwIi+37phUc0AYxPFVLmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768832634; c=relaxed/simple;
	bh=j1Ef+MIry5rH8inZeaEJoEp13oN0a3sIwp0aXpmPwPI=;
	h=To:Subject:From:Message-Id:Date; b=WOFWjQU4kVi+Og/aUWEoMoo7clCT25HcpYwKdzDaqCGG3Df4UzQVfIqW5sWWQuwMLTEgAKjzqT+COR5E9DNjIcH7YAxy2iu6WK/iAQqyxnHkkanV1ohfQIu+gyVbdusIULqCDZCSsr48hSA4BKAb8qoYV+ZdYOGAPwE5+grG7uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cH0Tqb56; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cH0Tqb56"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D941C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768832633;
	bh=j1Ef+MIry5rH8inZeaEJoEp13oN0a3sIwp0aXpmPwPI=;
	h=To:Subject:From:Date:From;
	b=cH0Tqb565BEu+j700evKbbUt/BMI0MFgJFTFZnZcNd+7PbG2V3o1OnMsw5mmnfyb1
	 IN94lEGNzPCTnmLW/g6+3noF9RWNyC7GnJYKeR4hRUzupBopLgg+hB1SF8gI2+38FR
	 Ka4frh4GStwIv75+LO8LRJX28FM+JBGDHCFZ48bytYAX9IElZkQtU8+OxZiwn8FY2u
	 0h8nR+KbUNwgu18z3B8ilaBIRnMhVeuyYWRL+meCGvKqR4vLEXegJraebu5a3s6Axh
	 ZyXRi0yp9ePdIqpKwnCKlt9Zzwjp8CF2cwbZP3J/HOveTD7O+tQT3lyjjLNi0P7y+S
	 IT9r8XwjJAEZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900FBD29C2A
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176883263358.20962.2895180747043737069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27b234b33b3d6af9cde1a36c0a89eb544ded8b36ff51fa6d288f5ad09cfad4e3
Date: Mon, 19 Jan 2026 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768832633
