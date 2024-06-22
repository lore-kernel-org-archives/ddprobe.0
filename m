Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3513E33F6
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 05:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719034943; cv=none; b=i0VHcXpQY5EzvJOwW3lNbfNWdSCJkbKGfaSmrubRbOCAMhpkoTYe4GqboYBsN6XvP1AIsY2/aHs9vr5vzZK3FQiz9cV4/ylcyierK7xDAnOtwQfFAdMebT255eZp4cLYHypQTzcplJXxChJ9xP80lRSQRv5ZnF3j4S25gVetfmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719034943; c=relaxed/simple;
	bh=pyBSaPfV2Kix9Cq7PeEGF3oYvrex6u+9o/BSe1GWhFc=;
	h=To:Subject:From:Message-Id:Date; b=Oowc6zKYIyD0iB0r8i7kpPlG0nIPgMdl6ymPrXMpBk8u0i6VGYTtEFTlMz4zBpoD6Z+ZnhfW+eG3cjegk8NofsNgQWykS8wBWRUZFiJmd1zzNVaPFG2D8lhC9Dsdh75hwIOCA/Vc1riwAQoLXgdwN25YMydMltNVjdJBu39me1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KLZpkKk3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KLZpkKk3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0EDBC32781
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 05:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719034942;
	bh=pyBSaPfV2Kix9Cq7PeEGF3oYvrex6u+9o/BSe1GWhFc=;
	h=To:Subject:From:Date:From;
	b=KLZpkKk3k46/XGszVCTdz07Zc32aUQML26qHHyaaJ9R2XKzfLSRYfjp3qR8wIqHwJ
	 mf+THV8b9qBrrv2wSt60iYRWbtjEm98QfdNlsQZdkL1H+/eJSJI7hUBvhu+Y3/GERQ
	 yuc0+YVEpZqEVd1WWDQl94mpVcBEEf51THhYtzuxapRMYXU450NeZkjf72871z11SV
	 VnlEqW9ddS/jivrPByks7/5cnTOkoW4xHLcEsmt/o/Ni43nSB+DBYTl6SJ8v0RSLXc
	 YJXFReBZfTgWZjCc0nZwID7aRX0p6zcUIJb1sETXnsu99u09y2ttexxkNwFm02Z/pl
	 F/fITMtPZItXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAFA8C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 05:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171903494275.17041.4218563195620720490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18ea18d5c33ac736e986a54889661309d8d462286bfd4c4e3c0c21c0c201f3a4
Date: Sat, 22 Jun 2024 05:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719034942
