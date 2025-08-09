Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D7E27FD56
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754741994; cv=none; b=m0man8vy43CpDyjqidge2MFogQTBkcCc2cFmmSi/DPXiNB6xjF+wLo7CbuTQ/LpOW9y4Fgr4wWHNdW7FGCHddDfj6ZYWb5/CE1e+sHZRVhjaIZ53/RCPz96waDN7iYPXc+a+eIwqRjTpdywZwBRdU1ojTgU2bUPiw/MKQx6fCvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754741994; c=relaxed/simple;
	bh=M0gb8M7K0EPwPGx27PhwUhm4LcfuZSvCLy9DTXGO6b8=;
	h=To:Subject:From:Message-Id:Date; b=P/GIhhDP4bvhNDzPZwhMY/n6+WZTCbj8TsNZJeSMAZ0f/qMb1WV80wPTzBYmmlJixDL60ytfs5GGt9I5+LeWflQwO9vc87ajCEUf0spunmMShFPxxrqRNDyclQaFRIB2xxUy1lLAFZICTnenCJVQMO48pakuF7OTRgqksgGTTvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T1MZBSTy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T1MZBSTy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C3A4C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754741993;
	bh=M0gb8M7K0EPwPGx27PhwUhm4LcfuZSvCLy9DTXGO6b8=;
	h=To:Subject:From:Date:From;
	b=T1MZBSTyqwRXip1RabhDUOo2STUkR46jVOq4WjxG4xblpbC2py7jUrDuSp65ronMJ
	 uPF3C77ah3xiO5MnAFf/M9Y+3jzc5jHS/ym5hHvlOdL792ez7jngAJ5yYw+YspAaDx
	 d4t/WiSZ+VJALOpBGMQIZ95DXWyppHeNCx6tzTAlTgqk7C9godw/l5Nu/9tub6HYIb
	 3bGJMmS4ioCO8Cy7VQK7rhr2nyiMhhkXJsAiAash0jsm9Cy56ba08ukqfutlWDC5JO
	 M121dTMDm3RtmW93+QYoZIroA2ePPA5EDglokqhB0FDK6wgleZ6+WpYY1x75Mj0mwf
	 GznF298o0vIoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0D5C87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175474199357.16962.16143909358068499341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f7eab47fbfc954d15b40de31d8a51437ecd2362d8d3bde3ebaaed1eeaf49a1f
Date: Sat, 09 Aug 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754741993
