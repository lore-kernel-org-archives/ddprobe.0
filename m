Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C310256C70
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773605094; cv=none; b=GaWdcLIQTVAwvXPjPrRH+8k9B3pE0K8C3bEpZ0C+YJi3ydKMD8PNAUoj+udY5SW9Q04i2kQe1jkw6VmQGpo1Ti3unBjrmhitNPUinPETXyXqZ1B4ISZh5pmQHzKgHhuRlF4o5YSQSIRMIqK054RZUpdsLIrt+VZA8ouBOo+Kgcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773605094; c=relaxed/simple;
	bh=WPELUNzpFyi9hzDkntzvOGdTATYf3n2AQAU1Mw8hy4k=;
	h=To:Subject:From:Message-Id:Date; b=nSfUit4VCDTs4VA9WheBr7C5BmWIxGRl1R1JKgxYctWagR1Kircx3fxVDmC2Ve8gMKw1Z+FwuxnsjyhA1RUVXdZ2wG6cEMdw+hwhkNMtPFvg2ICHf1z+lxMlLpV7UArBZNQXs498KTctN60hQFuSwit5YZFB/OSvjwf0V3MW8os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SWkF1NVS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SWkF1NVS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73BDC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773605093;
	bh=WPELUNzpFyi9hzDkntzvOGdTATYf3n2AQAU1Mw8hy4k=;
	h=To:Subject:From:Date:From;
	b=SWkF1NVS7qozQSLX0hNxLwdhMIglxVbtuqwkGNiA3Ce6uC5aDKqzOCR2mQlvksT0/
	 wImwZMiX4mba64u852oBJ/nrK+Q6zXdRHNgFd2LR5zKqKurWFUP/OAZMNzbq+rAieD
	 VrGL6CqO+xJIi4uiiAVyTnSyOaRJQvUgX/tI+/0m39qH8IFC4p78N7lhKIRyI9nJup
	 cjYSFsgzKSQhT5V22LEl5LbcdlAUHjjO6Yim+lZ93rCcu+1C1oAMZ1BpSV3zGd20mt
	 sH3O9tLCpvoUpoIXL0wR0Le1IX9GWjqEMowtX/csMBlcTtsEAs3DMKY8UMijRre8qs
	 3Szfas2Mt8jLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FECF30282
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177360509358.17122.10177238715335259300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 201b941624280eb31124dea82b43165103fe3db4e78efb6ea57585b707159964
Date: Sun, 15 Mar 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773605093
