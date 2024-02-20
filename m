Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1612414A4C8
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 20:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708459697; cv=none; b=XnOC9Btbb8vU8PYN8P8oZR0wkWGxNPNMbKha8tdlfTxMLG10+G4tOuRRMNAvkzQSuak7uC7OPL7+sAKu96JNi8RP1aN1rccpSipfFrjbMFl7wziroywThHBYXNGniaux1bgf355FzG8Fb+Xqv9W3IeJY4iC+poEyQjyOU/su2Aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708459697; c=relaxed/simple;
	bh=T9mNRtTCaJWFC9z0gbwnyWKvcjlL+xp5MgudtummIGw=;
	h=To:Subject:From:Message-Id:Date; b=QnBT/IKz16FoSFSEQ8LLv0RxjSCtOzSXpVAiia5t34WTPB1xTu8pfzIJZmUhy19b4R82V2yIkNJq0B/IBkUexM1I6OJBUsX5BjVdMIiz30SgzwrgfWCl/jkAr1t8IKpqe37zIbGa3A/Gz5T5bqbpN/WRzF/V0k+jfaXqk2k735s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bPQs0TEz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bPQs0TEz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95A4CC433C7
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 20:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708459696;
	bh=T9mNRtTCaJWFC9z0gbwnyWKvcjlL+xp5MgudtummIGw=;
	h=To:Subject:From:Date:From;
	b=bPQs0TEzRpZrXyPv8JdIvCoLx8lHgNA5g8SoR8vPHfDBoQZvi+tcL+B8vUptrum3X
	 hSFXITW0Cx+CEN1s33SGjP1x0+6eAqRC0KUK0lUP+vTosNcd/3v43VlBHQZbI9zXYR
	 2tW3JPe5zWtQP9sDW80sxt0WQUmr8gw1Q0QECv/RK5iBWEd8PJirC2B1BceeS2qk42
	 eZpnM2XtL6iHEJi0A5KCczEwK6ZXqZ2v/1PSyye0xl4vVfzAX5jr7C0wVhtL96QZsA
	 XCLaJhs2Y4WKV+okLVGWnhHKGF/7sn3g9dN5jNU52zpDaJm/oK3o+NHwp5ABsVIqBe
	 26VDUQrMCh5Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73D33C48BC3
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 20:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170845969645.31293.11077680682508998533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5ef452c424ba4b2435148978d09f1c607540c320b01c9ed0a011491e33bb784
Date: Tue, 20 Feb 2024 20:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708459696
