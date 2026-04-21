Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86D0935AC3E
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 18:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776796054; cv=none; b=SfL/EhLmp+SMCFGTgr+2LKBcIpKuhvAkBoH/EXo0wFfGiUZa9Pl/xFOY4pVq9PtSYTfMv6OHIOEJ0vam9X8TSL4FtswHLAPlrOVlVhKqC2Gx7jE2pDX1oTER47ssxrQFHXYaGX/qyAGM0xgHtiGM0uiW0wab4zr1PfH1yb4UDHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776796054; c=relaxed/simple;
	bh=Og0coN8cVLd7Be3/kXE0LEgvJ/80y1I67DWjx7MmYKA=;
	h=To:Subject:From:Message-Id:Date; b=YNL0TbNljS9uQHXkpqVYk6q9QTay/CcPxO2b5mnmGN7A22mrwjHxIC9cgIfsW+KEddrDcXsDB6Tuz1/c+iHp6XcugFYOO/GU3LtHSrAGu7NkeAvP5yLUN4VbIe8cWvtFr65tLY1QCeiBdAsBrjX9RgjlOOG78N5U8ove1x7ahts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FUq+r+Tn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FUq+r+Tn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8374C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 18:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776796053;
	bh=Og0coN8cVLd7Be3/kXE0LEgvJ/80y1I67DWjx7MmYKA=;
	h=To:Subject:From:Date:From;
	b=FUq+r+TnMq81r8wzdg3iElKWxtKDvohSS5Q0DXc8qEQiUH+f1S/EExvDCHtW2yY/D
	 DvAxje2pmIwea+Azs8ZNvQ3ylr9Bj/yGObg1X7wp0uaezdV68ovTrmVcTmAnMSwXB2
	 YSO1oZFw5z+72CChnlmMVIJa1mz0VHj1GxqGxhrFGwyWVboBzhW9Gv1fAZWwIuD5Ka
	 6fE8QdBOnE68drP/8M36QV3ZEB8g43jpZBg2d/eUE2rBujIlvn9D3Z/iLdk3i262uX
	 Bwj0oZftUVoNVZ6in4FWOt6Yraq6RYwmwmLVE8isf0Vlbar4NmReTILpKhXvhbAKcr
	 AJKj0KhsNobQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A53F94CA0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 18:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177679605368.6388.2604893165010642175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae6cd2db638fe389e0a5a956a664443e11956f515efe5585f0b46171023fdcca
Date: Tue, 21 Apr 2026 18:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776796053
