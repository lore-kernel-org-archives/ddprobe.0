Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0901713B293
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771301094; cv=none; b=UkW+hl5lgQWKAFYMOoAFp+eFCUP9Fr1z0238oY2lf/Jq3Ec2YxGBmpcN7KzgJpzkdF8kY1D+3lsD/RmvjjqOtXnUekf0WqVIytpyG8q9GP3k3vJ+vid0GUeMfqc1Lcsi2/iBTTIaU7O5z1wtmgmoebw2iTu05QWNp9XGnQtCEl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771301094; c=relaxed/simple;
	bh=KQgC3Z6XGAqp8H1wnyitYslJoM/CvGbjVlXxhTcW4ic=;
	h=To:Subject:From:Message-Id:Date; b=Xwx0yaYp3/smMTe3X3sqoJoVYlQBUSzpFn5oCgXHycDJCtcw6hRJ+tgme9ApNn+YTrHm6xM8ECqLfHVJqtiisznwgJ8PNlsilxxu+gCIvnAO+u4Ojhi7Zh8E2fPvmON7kTGALSccJtFntynZMuQDGVNRqYog06nqf8dxuzhiUGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wkhppysc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wkhppysc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39DAC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771301093;
	bh=KQgC3Z6XGAqp8H1wnyitYslJoM/CvGbjVlXxhTcW4ic=;
	h=To:Subject:From:Date:From;
	b=WkhppyscrYf1Hiiob7IRhFK6tBsZJs2fPf1zxyHpdrNXDdfXKMu963/mLmI9+3mo/
	 yh0evReDGLVVNsL/9BgkoE0+2bxV6ycMm8+56YgKqdZfIHiHd/YqNzawZbrh5Vud+t
	 5THKQNN8WKuLFNxLKIFtf4OVRgfW8XMlbrouH25bSWiDIFGx7C3r4s1iaDIfA13S8D
	 eTZUaRtg9y1tJ3WfSc+oxWqYFy/ZFbBlbH7kVA08wJrQAdMxRGkf/LeMNodwZNa67k
	 Zj9fLxlBiDwiWzX4kKquhBjLADAwrfOFeu3BLEnf/wkG0RV91i+8NJ+lh1mAM/IGDR
	 p/PBNZhLeLNvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DE6E83850
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177130109358.30663.13582210316383705632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fa56a0729e534e37a694612b3185fc724a8d619af465142635a34a8324bcd90
Date: Tue, 17 Feb 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771301093
