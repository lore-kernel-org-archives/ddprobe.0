Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52D994C74
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 18:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750791595; cv=none; b=nUFTFj2j7ATz825SvFadnoy82UP355GNeEUfV+Dh4SJaK+Ggp8cBPscMIP2OAdwggCWtqa/NGN+uvMXOwKt7UGVLV7nYr+jDIpPZ0QUNcLQOyDG2Yr1f8enMW7LHL3/mTYNX34AobpO8DEYyy8ELYk0wmRml1p+Z+NXkp2Vfkhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750791595; c=relaxed/simple;
	bh=F28IW7DWR1Ix4n9n2/teHZqIz1UuTqGniEfy+tR+nPc=;
	h=To:Subject:From:Message-Id:Date; b=l1fxo+XoAcF4bSpiQ7sCwOT9DJZhA26LGpsBQdqXZWka++LOuPC8GZIMS7dH4c6nY4Jf2pCXLJNySOj41GcFGf7MKWQiGFk2FaKZfgWmtADHO1C2Yk/2SzZK9E+b76x4A2SbpUGja0P/z2IXaJ6W2AzatlquJRkNIY23YRgLa/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YhR4TBDE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YhR4TBDE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6055C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 18:59:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750791594;
	bh=F28IW7DWR1Ix4n9n2/teHZqIz1UuTqGniEfy+tR+nPc=;
	h=To:Subject:From:Date:From;
	b=YhR4TBDEcHiMmbVKrzt/12NdeUriv6w4rXn3pZx2BPLHys0DiDXTk1aRVBy1nMbWb
	 YJDmmknDl67mcPPutw6p5pOMQzoyyVvX7XxcAvF8nDav+GLNA9F79EMnoZTbHOI9eP
	 oKB4e4AekK1y5/DPGLxCwhibsv+iYwueM8xbLz628sa91OBHa3VaBOvIE7iwaokReA
	 tVXahqwKy+j/ZCW6FGVxtPMJyg6ahWWMM7ka4SIIRR0rEFHmIYKZZRVR6ICMEr6bKF
	 Y7U8Y4wiLecyoaFjxjuuBVIsg9WqI1kosqyLKTGdDXlpF8KXAnp9suKqA9YvdFONm5
	 WzFSfulMLX+Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FE3C77B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175079159357.27539.17926292142216798118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf6a394ba08e038dd648906050865b3259a905787af8e0c698956e0d96b78ac6
Date: Tue, 24 Jun 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750791593
