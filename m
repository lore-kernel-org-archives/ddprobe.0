Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E862831F9B5
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 17:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774632294; cv=none; b=f9CDias5ZlctB4HYL75TP2Acv++3yWhFv5gzwaPzxFDt4mLGYMaH1IrkHwqms6p/6nwGWyomBIyH5VRTS4jkW4wt6D1XIy8bxtBWs8n4oSKfSN8hXEZfZwPYUjOnKOrWZ/xaebDEeZ4U2izMW/YdK52StyFqiXfm3WnXPI4Tngk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774632294; c=relaxed/simple;
	bh=HL4b25KoobndfF32y0kabc5X13w2JrBT41GiNpCDI/U=;
	h=To:Subject:From:Message-Id:Date; b=AQ3FAd5RNU+2olG1fAQvgLvnWUbsC4XZrlhzdiDH49A4uVg92A7nk2n9EXyQqGKls1XkcDxK/+cYggrAnO/+Ebbi2pb+aKjN1z03gJ/oMxgMdsmfy2wxfgMIzHoV8vAoYqIlpjrC9nUAvevgq+9qrb0LUO7kPTbXmt35yIsBcFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VFYfyEp8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VFYfyEp8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99414C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774632293;
	bh=HL4b25KoobndfF32y0kabc5X13w2JrBT41GiNpCDI/U=;
	h=To:Subject:From:Date:From;
	b=VFYfyEp81bQC0+SUdOM4FEH+utKGgm3MLQkY2DAdVPTbXVSqRqDD3q4tPDdiVggTS
	 vYxqSx6i+Ejrx4UJ9EBgEAHojGkAN1zIjFnEQo5Svyk4jirQaPeZE/Jsw578Ker6DQ
	 51VmIpRAkqQ+lkrzEzRENTfujr330+EzvnNkjUwt82pGN5vaKuLPKxGj05DKI2Kfwg
	 ELUZ94Y2mHzSXq8QnE+YbNjM55N0PcX2QW9mLtIui0WVJ0/bPrVE9x6wQvulSN5q6F
	 Iy2t3qgCFbW9O2RGeiWd2wC0tPSPNWZhvuRa3iZqwlNx5S1dYvLn3Vot+OtBzIYGAQ
	 mTTtaHnvJ40tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AD510F285F
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177463229358.28114.1145760341804020761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 654f4f3293c1a7f22bcc51690feaa9903a0a39c4ac1a1222b9a49df589ad91cd
Date: Fri, 27 Mar 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774632293
