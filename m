Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC3534C83C
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774600494; cv=none; b=Z0pdJ7jfyE5S+RVqjJSyUtcAY/sUPCsMlxUzkivZpzYgjcAPGEyrQB4zV8/dx6zRueY3+NhOsEsaWl53ePlPoghLRf6pPM5qKwpYzLAkN9Ufp+Sa6cypHCaIzD4VaqFLQtR5Jrb9brx9t18RhT9E7jcHXvP+qhMmuTxEJI8G2zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774600494; c=relaxed/simple;
	bh=/+xpVcaZjk2jwxbnYOiQBiKOLkpyxTZIXRGmM/Brjd8=;
	h=To:Subject:From:Message-Id:Date; b=fUTyTBQDXPHVzQPCTe+SsXOnpzYKZs5P+QJPzuNip03vceYEFdvs75h8vdQ7UYaL8WF3xHKZszQCQhsa+awdPHjDfw67Alp8OvTWLgqVbuUkdt/99hLknO9gAv2CiKCXecbtHsLxSNuMr6/CcCdPOin15MTgzIyUwN4gvoBoiPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OqY6UJOQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OqY6UJOQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD5FBC19424
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774600493;
	bh=/+xpVcaZjk2jwxbnYOiQBiKOLkpyxTZIXRGmM/Brjd8=;
	h=To:Subject:From:Date:From;
	b=OqY6UJOQulckPYnUykloU3CHH1LrCo7gVo081ObLz4KPravb+6ZPC8ePC8NoOB2sc
	 cgqrRsPnW9vfeYF6MZ3SawAfZI51hrfPuQ8WFoeNscFaFQvEEeIscmZx+T5CxVjTJ1
	 SI41T8WLwRkguhDA6O68Mm2kCc4q3XRl2l0/WNqWletjcRky5dhROWeioJAz8WfYBE
	 Eq5qTjKWCCp78ZTFxO2qVgPMk9YElALycJL3InlMW7+5sxbRZFsH9qXIodsuId6hgQ
	 DrTUalrDdqQJWvOZ/8n/eaa5Znz0FZdOWw8hBkf8cjLZEU1LxbEoW1v+x5fIp0oD2J
	 tDzZAyspPUWOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE2710BA445
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177460049362.15007.3615430292917628638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9936e493f86612ff26a1414020468bfb1f731e9394837456543cd8f1457a3a7
Date: Fri, 27 Mar 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774600493
