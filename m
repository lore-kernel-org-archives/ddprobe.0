Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444FB262FDA
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745356794; cv=none; b=E5usq2Nn+Hno2hsBruUfR+d6iws6V2w6DFhzXt5TzM+UVjo17VHZJAO9rZ2eSdQkw3uGkVbM5d71qOGSX6t194eBNXtCQeUZOfhFIWpAuaONWnKuNkehOyX2Zj8GAeKeWyoUG6tcUnUZvuspzCwlIv3inkEBfMDFWV11IglJpJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745356794; c=relaxed/simple;
	bh=+PfgL9bE2bgpHGmINn3gWwXX35K5XoHIWECIKQiCwdc=;
	h=To:Subject:From:Message-Id:Date; b=si7XnHAwN0tk+bH44RXi1IanIYmT1BOa71RSc83wzHO2IiK43et2ncHW3hADdpPeDgeMdTkhz0fpWLqit+QE6SqM7EDrfUNFLzzeQZby72QUXKjLsENPYXNbr7V/sZJA5kRhWQ808ylOEIdLQ4qLli1ROWvtk9eItn+S7nrwZx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ncwn4Dd4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ncwn4Dd4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC6D3C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745356793;
	bh=+PfgL9bE2bgpHGmINn3gWwXX35K5XoHIWECIKQiCwdc=;
	h=To:Subject:From:Date:From;
	b=Ncwn4Dd4nSg5kECwfzxLYbVDgMqJv6Ia7/lhoG/4xQNwhFtSEwwzpLZC2Be81ofwg
	 Z+kVi5zbxnIJs8djQ8VDoql+1kbqhaZ5u5SYIOpY9wC0vUMSUy5LHVuA/FuCeh8/D5
	 5Jstirs8J+Q94RJRoE3b1Px0tR9JJJA6chjvnNj2yprdRAW29pRBgUpvb0O5wBbc0s
	 3L24jpjt1HX0D26NJFX94LrGlf3RFvh1/gEIHCdd/6/yCCbSthSJVxHWAVT/og619c
	 gxZxomIpkAq4Eb79KBJ5sUbGOPlAQaBoGcDRxyJA6+1FMgfEP44Uy/QrJ2GBthpukW
	 Fc0z8vXFazSuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AE26C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174535679360.12450.5523998637125055072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad30207710a1ee9e8fec10f8485eac43b25e91aa5d69e2aa594784684859bd70
Date: Tue, 22 Apr 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745356793
