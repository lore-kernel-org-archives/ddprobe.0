Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2082424679F
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754882994; cv=none; b=r7VXFWWGKpuWe7HgYYH1CFLtnUF3CKsZd1e4EmfI7AXVYIpn1WCY2VwgVRjSjAaA9H1iQ9Ac8OhKKDrVDj3VtmiaRiWNvBpxAx2wFVs3cxgvELhPX3zGjSGbci/JZBLUvv7Oe2BAX1sZa09EYi2+OvqKREV+/2SjibfT/fh6XBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754882994; c=relaxed/simple;
	bh=XfeVA72Dynkl2VWCHIwKK691IX/9tNBWd3PGD23Vj6w=;
	h=To:Subject:From:Message-Id:Date; b=pVByze3tHoqktiRx4QMrWRgHd+Eim8J2jqCPinT48L+2xWYhFyxYaBb84sid8P/sGpOPoOgQbDyMfd1xPvnauaekILE6Ym89D2GDs3hZEu4MaXlzrssOIyPveT+sy5P/xuEd4DYweXiVqPSNwKMMd+roYlhYtt5xRlwvJwezLAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YOBJ1NAj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YOBJ1NAj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0926C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754882993;
	bh=XfeVA72Dynkl2VWCHIwKK691IX/9tNBWd3PGD23Vj6w=;
	h=To:Subject:From:Date:From;
	b=YOBJ1NAj1+xGjxzDAKY/IfWAVPsBLIJritIh2bAUc6fUgvzObMPNrjF0AaKLjFEra
	 P/QiudTg+AbIm++vxqpO43SNSuBQ/Ahk+PawUUT7VnwvrcV+Hus2LhNuQW0YpDceBc
	 huIsnd6OeYleVakgoe349Qx70uoW984LHzrYL8qOSaFxUS2sXrrvE64yoxsmF/72ZO
	 0vBZHzaY1nicL+3hv4zj1NKIOCk549Y8dN9+2WyuHA1pObvbobsqeNG8BGfV2suI9y
	 jtj/Px6bcnKrEtythr/fA7F5LSAPKiopoZ/r9hEL2am/iOXifrO+LoZ8Zd/ZiGWNeM
	 YRNmbWgV+4EFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE95C87FD2
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175488299357.16499.18085489325559095784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66616ee185f4376cb682acd0ea47040cc24c9f8aafac0dbb4e8aff674f427991
Date: Mon, 11 Aug 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754882993
