Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4FCF81ACA
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762094993; cv=none; b=P5V5ra7WtbWP0LQ2u0b6gW//UX18ePtDHDwTjEHU2TLCGSy9nHy1R+DIcFkOdvXcmJbhRtg4UUEBDNJTa6V0aDVM1njg4UAruKjgElbDsGH0uzHSJbYJdRZCjNlBTMHYaSlyyPGEqXD+UTq6VA45EbN5HZZB5w0dk1fNbcFH4Ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762094993; c=relaxed/simple;
	bh=+4BPBZ6Jx0ksfYxGBETYYMiWhFhMe4H+V/19G8yFABk=;
	h=To:Subject:From:Message-Id:Date; b=uRB7/nVzeHnB5+nzIyngrtOvoo2dGzMKcVg1GZ7zR1gllVGlJDkmgToRI5OqiwVPFBeiG3KRvzr/pGMjgM1y0Iax6mVVBwmXzIeLXgMhy1YD5jQUZb5wLMe0DEsCKKh2N1UsWpxKvKctyo7GWLyhhbHC9SSih+2c2adKGlLBKhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hUm+bcWQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hUm+bcWQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38D4C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762094993;
	bh=+4BPBZ6Jx0ksfYxGBETYYMiWhFhMe4H+V/19G8yFABk=;
	h=To:Subject:From:Date:From;
	b=hUm+bcWQp/Qet+M5JfGm8GGKVjfR+HLPA4LkJ99/ihZcJKRQfwZUqhKm1IY1iWkGA
	 RvX5+N2FTeboF7HxTfArW05PY6YFv0OQOBeGrb2z0sQlvTwtB7+0Ml5BsE4m6aPPuD
	 LyraOrBSQBLs4ukb9K+XTExxWhZTwhmhp2y9lEziobD3ejFhC57YHAHP2eO9OQStdF
	 tddZfYwEVqh8ET32LO8K+X6dumu3YOFy0/ahkfgNINZ4WlKtpsYSQpHaNEmWy6euHx
	 aoin5rIV9vTEaKgzg00JipvBkQI1CNzntY7aM6QX9+Vg1LnWgZ1f5T8rYEFat7QszB
	 wkbboipxiX8xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932A4CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176209499358.30388.16617992369370390623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68926edf8a85aca876663a86a6cd53a1d55189f479af9e2795d1ae5cbbdd7492
Date: Sun, 02 Nov 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762094993
