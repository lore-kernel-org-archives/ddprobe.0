Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E4B347C6
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766787834; cv=none; b=J0ErrbVHQDHvB9lAi/DDfLDXzF7FXkkL+zNoZkM3K9BU3lveTgZNdb8L54LI5kpwhzCQNuXy333qLCQMsLBOcZxCobYhddKhnisT1jlGWzQO1XiiD0lGhP63WyVRhv8CMCk29fdC5wNs+/lnpTO859hZgbFwwQy3s8Haq0LLC/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766787834; c=relaxed/simple;
	bh=lMIfYMHV0MFwVQwCeR13whSh3pw0dv8/JxqyCG/mgLo=;
	h=To:Subject:From:Message-Id:Date; b=GxtSN52AxKmXNP6TEGCzpzeRIua4gi/YkLEdVSHiyHN8SuuVh7ZGNl/fpLgXrr0/TOWPpC7wTCbVAZjWQsSAtCzgdfY7GZJ/7F1eQiczxiffJmwf3uaKziLHK512Mvv1qthq+IvEOaQbeEJt5u7QM3/rAwCzQTxfMgUGiAwWHEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vs6jyO2D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vs6jyO2D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD25C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766787833;
	bh=lMIfYMHV0MFwVQwCeR13whSh3pw0dv8/JxqyCG/mgLo=;
	h=To:Subject:From:Date:From;
	b=Vs6jyO2Dd0aqtgLcSBcBbVd9yMjZUaZk6wH9W0JcgfNALVhx4MgZzQTW8/f4G67Pd
	 GYgPWwmXZpykDN8X/qUvCsMCdGeUjynguDzhLnbGoxW/1SH5x8wWtHGOea5RkyVqm4
	 CypGXw/pfepNEv2TKQPVz1NZbArjWF8+NWh5s3X9/KYapb0U3bl3nz+efPdk7164r9
	 29sM2WEL/CUCTffrAJ8Re6H4pjT/zSTt27/qNDhlT9yYIh/gyy7CRN+8TPxPJfxYRH
	 yzxWC56SgIdAJV2Jc+lNq0vd/YLZ1NIL6yTl93oQz0p9iLOFBk/+sZJdJ/s+F+ji8c
	 CEq20TNkxv19Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97135E8FDBE
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176678783359.32583.9808377934793257886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eef3b54076b78beb8994994975721a412d6759a4353393707496b57a31abd293
Date: Fri, 26 Dec 2025 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766787833
