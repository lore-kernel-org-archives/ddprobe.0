Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC7A2B9A8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762990794; cv=none; b=oNRB3OYja5RIuuLA72eOGGveTJRoRMPhHtbHz2hv5fiO0kaFbAYaWcSwxItNkmnGBGe/BKFd6GBvLEvnkT2B3oSI2L+zAQEG6FZ7BjrgXMdifP9JrUnO3eXoIHPaXS4JiFPVYrmnq16BL09k3Iu2UEiI39Uu5Slyv0vmNEUDq0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762990794; c=relaxed/simple;
	bh=b6ka23LL3dKbQf2T4oxc9i1IUAGPBNLFy2OAHZNwdQs=;
	h=To:Subject:From:Message-Id:Date; b=I1tiPTvOPd5KZgGfANcFvXNl68mF1gXCwDp5q5Wcu6k1duXCdwCXdBpW38qM1nTuXwXuZBbuUDb92HUbXBRBp204gSK4MO/Rog5ZcBMwmbS2WWeL7QgJDT1QQl4rzFZaoA9CQ6BvlpFxmpOG8JzNJ/KMdyfARx3186jpHFpY02c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jg15wm7g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jg15wm7g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B771DC16AAE
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762990793;
	bh=b6ka23LL3dKbQf2T4oxc9i1IUAGPBNLFy2OAHZNwdQs=;
	h=To:Subject:From:Date:From;
	b=Jg15wm7gMPiFJ5D8nvic5q4yzvGWwESPsqEebL3ZRBHtZCQ3VdAuRINCx8EC2CI2g
	 mTb99sZeBsHiNF5CGsLZLN2RnN/lS7nCOSQ6WMPZpz3CYd1od8QbyP5tBW5xmz6t/d
	 O4NJSlBV9LssXgSGrl5jkKmM4orT9q0a3GcWw6BMzSLFuditqJHn2GCBLNZBrhlVi4
	 K9SgaNylAZjkPPeXJL6zE5FNdRkN0V8KY+OGlMKzfw6/qJF4xp9AY255WEXbVmIQ8d
	 X5U7myqt8jhkRsc/rGDPofCGwsPJ8MdF2RuNkIz0ujBP5ch2CthZaSBO99nFdr6xQ+
	 Kxf5iNzFeaWWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4D19CD4F24
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176299079364.8500.6576202088966398856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b870a0d8c0e28ebaafb295877976eb16d3e911df632b5cfaa91098a449752982
Date: Wed, 12 Nov 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762990793
