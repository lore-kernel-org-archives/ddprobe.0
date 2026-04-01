Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AFE33446A7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 02:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775010894; cv=none; b=gt1XIXOkl5hil3EFGxcDNn+kmgT1z5wf+0Tx1KR1crX1ndwWAZUzmX7X178VaqYEZomaRCgsLO43xI4U5Ue18JXSKod4yUDQRKoN0BWB8oqfuFL1rTb43bnSWz/0FyKUNheqQjzC0TyYnOIYsHc673EwPjd6YeUTO0EGBvSi5To=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775010894; c=relaxed/simple;
	bh=cqT/xIhO6GNWsXftqRjiqXTXoN1I2P0lcF/VVKFWw2o=;
	h=To:Subject:From:Message-Id:Date; b=Wsk8Y7A/zuIJebgt9QI3l0Tr9Wm2bHMkwHToMNurg5isr0ZIb72v3v+TX0JF93A34wTIySYRH8J5ovRfJHbjN5sRD2EfO2x4HpdUVDy6jk25tXk6lM5325rpRvxcdY+Q44XNAXjdZ2WcRTLDGRGmvWKoGdYtOw9Yh4FscV3l99k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i5XCU2wD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i5XCU2wD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FD0C19423
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775010893;
	bh=cqT/xIhO6GNWsXftqRjiqXTXoN1I2P0lcF/VVKFWw2o=;
	h=To:Subject:From:Date:From;
	b=i5XCU2wDQZjzDCpphAEj4ym+birriydPJMff37bJdmLtdJodkG+coZNwWhF9UeX+T
	 nWbHnYAtNDqys6HdD5NLaJp8EvdJE4hwwK6aXpXLwW2IG6a5V1jhIHO7zuh13KHFXt
	 eDhPmTJM854e16XfKOC4FoNnyr+ol6o01xhpAcs7Dffr1EFXp7ttz6AGdoe7BE9zzl
	 jqrkMJTDius0+ogt2eSh/Usz0HMFvKlLnL6hVLvCsxasQIOWxrB/epjtr1IjfRqguQ
	 PKEoIbiyhwa3ndHL6YrXgLSQMOgmjsldVZ4HunFGX5VO+JwXCvGdJNNyVDgKX+S7sd
	 126X5SdBrGRFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9361410F9318
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177501089359.10611.16238836653914290887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72fbf9dd299b5402a074ebd3fe904bc388a530bc9759494697b5041d71a61e39
Date: Wed, 01 Apr 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775010893
