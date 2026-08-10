Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C83743F4DF
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786393834; cv=none; b=a0uSdodo0EBzQiD7+aS7jvDjmUgCoxjpbgNsZIUklkVlk277AIE9YME/6fdclG+RK7ADqfZjuOyOvkSZ3hJmMOEJZO7+vid+L8Q1HkibG0OBJFDQCXjdzCIgTNCGaNdOy2bi6hW4JFKXsfp7aiWm5kNB34oCcRBk/ZvS6yhEMrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786393834; c=relaxed/simple;
	bh=TSqguKoqbwa0Q2mG55PFwrHAFo4yLq1j76y6qM2foSE=;
	h=To:Subject:From:Message-Id:Date; b=JP7w+CJty52kn2StVYUp59eZM9DfGxb3UXusSKsettvGSdkGTQY4Nk0AkGBlYFeIgHq58xgIYV54OFHQwLVBto/Slvn4kOncan8swxWEd+6GFLVtPonZYtGBr0/Uu8pnCNCTzYArjiEmwSwR0lsTbpa6GnIycWJ1y7uJbW3KUXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UyWjc3Nx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UyWjc3Nx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D15DDC2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786393833;
	bh=TSqguKoqbwa0Q2mG55PFwrHAFo4yLq1j76y6qM2foSE=;
	h=To:Subject:From:Date:From;
	b=UyWjc3NxMuUDDMQoNcHNcRqqT+FO5GPZyJpGH3Fr30j9dH1i5B1y2H6MEP2NIDsrP
	 gAT9+G4HsltdGOV0oK4hWosmQBj6ivQgBA92KcwWRq+haoUAWHh+VZ2Hou5DJ5V7HB
	 VcwKtdQORDaPOQCsci+gjcGWBXZPhmhuDjfSpaIBDF3O7xhU13YWPzBGrs7PNSENZj
	 TYnCb3MC/5QcfcQDhQkMuKxX0ifAgRQHj4i2u0xMqrhNWupe1CLzjK7EepbJtJgUi8
	 S7LSlQV/K2tvGLTdvrO0ZVgosGA0uXHrXJmfMzVVX5Iq9IUaEetLKr5WsoGY5pqRbz
	 R3TZOMJrP8PnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEEE4C5AD7B
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178639383368.15172.5879163371750389699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c37ea164a51da130da7b5c4ca60213f96aa6a290b9024d538cc7110047da1675
Date: Mon, 10 Aug 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786393833
