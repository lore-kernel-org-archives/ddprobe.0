Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5623C8722
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 22:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775082334; cv=none; b=VMOLVyR2+Qxezk3jMRE9RF0M5P/RvlNbPjXroqpzhC3y7lWsJVPQxNQIHe4q7TkWTMeAQoaO7cFGer3os2sPpPj2sl+qzz+LUBuGyCfYe/q4eQanGchQMG1QpfcwJhZ05Ib8pr0TMbPZXsv0AmAGle7molUttDaaMw7CKA/rLZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775082334; c=relaxed/simple;
	bh=tGFWGZb+Himlyn5g9E4y7u5lZLJoBm8417f42AvmVlY=;
	h=To:Subject:From:Message-Id:Date; b=VnHDL8GL9Xq6vdHEoLyKnMQqJ1scX/lwqN5ZNYiLGXmRSU2jc5AkWBv+ysSOaRNiDGmVU9bQP4VNIOlqssF0OUaI06C26Xs1dlozbhi8hI5DVZPmBx7GfbPFo0VllGwtoznYcpdak+wtruU+X2ZIbp/r70XHER2CsAAmX9c0cFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dj9cL+/R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dj9cL+/R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C65DCC116C6
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 22:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775082333;
	bh=tGFWGZb+Himlyn5g9E4y7u5lZLJoBm8417f42AvmVlY=;
	h=To:Subject:From:Date:From;
	b=dj9cL+/RZTgToVry+62MS86JtkP20ZVb6jw/UkDw2eHSWjkLb02ELmhBdQ3cUow60
	 4XzkBIxNDovJUZSUcMFFPElNav1Hh5AvxayE+QrmhqGM3FHoiD/s/rM7mK8OUdzEvl
	 s1RGOk+9OKyM7Oz9boFtcXe329teUM/AwoYTjSW5q+/kYsIC+BIYTz2QuE2KRjt1M6
	 1K4t0UJKUhDN39Yfz4wJbwpKRh2+LXECRjcCIBJTAA1tS3xPJEdHh2Tcs4TQR9/W2g
	 cnr7sU3KWz7t4/FJfiOVSoMF22rrgOwC0O4SYUXDs5Y5Ms/NK9BO6gbAsdVSsPwtN2
	 sOL18RjxcstFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0FD210FCAE8
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 22:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177508233370.23901.13897260876553599391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc0e4c8b3f0150dd7ec841bfc8982a91d74b8afa4fb72cc992e6e1bcaec5d2b0
Date: Wed, 01 Apr 2026 22:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775082333
