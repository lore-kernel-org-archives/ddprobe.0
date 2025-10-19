Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21EDBA930
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760836794; cv=none; b=if1zjl81XfY+25kJYuXYFtz78O89S8GujNR+c3K4DvH3/4lx77SaUo76wCRCQ//oFjsQB9mcdaL07FFI28lLTI5dQ6fZPNGifsDvqtFxLSt3X3av9D2ZMCNHG68J1AGjMlWqtaBdn1d6VhM9GrZQEP/xVy5x1V75GuVcbVi++so=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760836794; c=relaxed/simple;
	bh=a89vxvRp7Yh41bpShGw5PsY3Jq1o/RWqDWKJjtAJPNI=;
	h=To:Subject:From:Message-Id:Date; b=dQaymxqB9ZjIX0n7AxBdD47BC827OqlNrMUArkjNJX7q9/qkBz4x9rf5JuXxjN22JbwMbpNGIMyqmAW4ZIE+IthAlO8n23acwQqZbQQMU4/PkiYoN68/6CP087zEeZ0/+6jo2D2ZxPUIi92bccI6NS61AyVB91/rcNB/ZJjtXQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dfyI7Q2B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dfyI7Q2B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7ADC4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760836793;
	bh=a89vxvRp7Yh41bpShGw5PsY3Jq1o/RWqDWKJjtAJPNI=;
	h=To:Subject:From:Date:From;
	b=dfyI7Q2BQ3BMFGhOpcZRIsLZXdyCil4DqJpF1EoPDAxh7ndQ13iy/AFwXSs9kI/jT
	 zq1PsJ2BHtJfaPkC2Ys/XYrxGlS9pOTh4M81ZbepoQ4D0pNEvmYffd6wBL2VA5IKRF
	 rEC2uyfAh1PhBf6VnIJ/PAdO5Uy/m4Nxie/VJZAdeaUyKm3lO2qe7ANs9J28tn1qfN
	 QvLSEy6EOkbTKs9o5W7cEB+Tjq3WtuWZhHLyVmZI3mFGwgMj+2RCn2FA1X+P+oEwig
	 fIkEGnS4NhuugFCEEK8hvyLxTUOdgCTX6qAM0WAHw+D85Bsr46tdeeAE7vbAntrOwK
	 F9NmVOWWkGlrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F79BCCD193
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176083679358.28449.7290564977354649461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbafd1ffaf1ca8f183ece3343154b8813bf5ec041d90976a59d103957eea8214
Date: Sun, 19 Oct 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760836793
