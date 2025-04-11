Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36EBF21D3F6
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744390794; cv=none; b=tmnOMUsvZqN4w07kTY8Mrn6b7gOt7ysLt8GJiai+wAFTZZ2syCMiv0uiQtuOPibPBaoxumuIwImWyWBpzMxOWD9oVecoBQNDqzP4CwuEze0lnTE6iOxujj1Nk+Ucwr1gECZyA1M/cD7Gws10AU8Qj95XsgkXAFwpobk9AJy6AGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744390794; c=relaxed/simple;
	bh=dkpQCfnpSsMEaJaq2gaR05DlEaAf3JQjn3CzyeLjUiw=;
	h=To:Subject:From:Message-Id:Date; b=B45koUwc8xW1f2vAbpUDTgRShCDvrnfmSxGyMhQCqFtGkBMTU4yVwAGTFO9iOPTmmCMyk5lHmXJaKZmyNHDi9ZY2RcJDl/TrRZTKnEdq9lMjrD22ND32Tc9GRt6E07DIPOkhJp8TQXlWes79zrYveuowPtwPudI8N7wKe4UB5EA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WlQ7HGiV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WlQ7HGiV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9627C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744390793;
	bh=dkpQCfnpSsMEaJaq2gaR05DlEaAf3JQjn3CzyeLjUiw=;
	h=To:Subject:From:Date:From;
	b=WlQ7HGiVreepqAD32lTlVwKeGajFH+0SNn6UEU4gV815w/59rLChRossua3yNeNCj
	 hNX9eSVEp2D80jFLzJ+EHNJ7YIF0UjQ+nSjHI0SPq73BsS0wBDVaer/NIwgGv9uPHV
	 Dg8CIhvepi58iHEqBgsLUM1ymnuE+NPs6yVPlxDjjjzdbKmqmh7/vTwGgY6zNoUs3t
	 bMfd4UdKIFHmOmYYLISZSq3TDiASD5H9FldPVb9c8zyv+f5iRi/JJ5fJGNJ3mlI7ET
	 5Z5TYkxTAUK/ppj8J1ua3X23C95QRqZ2atQ9xZNtBE/LuWxQkyS/3xP1ARRDhrya3N
	 Bf8y4eWmpEW6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F8AC36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174439079360.14002.14444248486209548065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a6dfcefed8e25e5875c8250668ba1c8a9d04bf451c4ce7fdc08a3df1024b98b
Date: Fri, 11 Apr 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744390793
