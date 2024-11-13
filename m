Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0CE189F52
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731486954; cv=none; b=co+MXlUevPM7uueG6gUFi6BfQkykec6pdcZ/Ygae2qrQonqzBDMOzeffufyrL7cQ0Gb3PSvAK40+GBgFKyzsN04B2/zE9XcJV+QxGThgsPhZbcypY6f164b9nVulAmTa0LpmvgmjpM2+2r+ST6r4oUFvtaHAFxt9QP7htr1UBW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731486954; c=relaxed/simple;
	bh=q+WxWhVNK+5EjZ3UptO3uxX/+qjFbG1P6DUi2gJ1HHw=;
	h=To:Subject:From:Message-Id:Date; b=aADlBuGf+8VXmwRNHV/cSSh5/pkwPsjb3ipBMSL9Fj6ko9SoghyMk9P2l0ABV0A7IufKv4D4ioLwumhjP9nVaREceqID9lnKKSzoaXFkOLmLvCDTFIFEDxRyqRSiNEH2UVBGaFkYpbFtpmi51keYVKxXNfptHReb9jRWTYAYTMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IbMV3+iL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IbMV3+iL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE217C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731486953;
	bh=q+WxWhVNK+5EjZ3UptO3uxX/+qjFbG1P6DUi2gJ1HHw=;
	h=To:Subject:From:Date:From;
	b=IbMV3+iLAKREwdsACPA5LG24QguSpqX83ClCb1mlCuwNWPJOxObIeiU+gD5RYqTyr
	 tDmXy0aYDDuW5Dy6xtcbmOUg+/eJOCK5E+bZ/iiR/Jv8XoD5inx7Kk9Xc2FbbColnE
	 pJ8u4Jbmj2XJ7WOkB+aKX8mAW0JGeq49eNkFCnEXW2bwH2co+XpY8DT/KUGVDlgc9x
	 LEDhQSjrWrSg9haYU81qY4NDj5VE6A7F3OdUktZDdOjy3nubCJ4WIhRe5RyskGs7UT
	 U91iQd/NV+/aMEV3JR56x/BNKkkQx8l/pYLGt6oyZwXPuEpwT0igfShnu/d5Aibuor
	 RMFep17oufAeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963F2D41C17
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173148695360.9488.3198369340338595693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58f2d5d3089336cb815ec1fd3b4cd981b5fb520d155668cfc7fd71039acc7363
Date: Wed, 13 Nov 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731486953
