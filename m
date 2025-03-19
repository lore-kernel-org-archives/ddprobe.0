Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D6E22157F
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742417994; cv=none; b=KWJjxwLr0wHIcnQzWAuj3A0GzMIb09naR6ndIzowhTk+niFLFNGU5cE60e+jab8ey/v57rJs8G22tYCGF/XEfJ0HIf45kuyLvBBNL+l7J7WyAoXDW9A7Bdo6IcO5pORmw38QsGG+jYgfVbkt2aHHnG9tXu598F0K2P8IbU1Ypy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742417994; c=relaxed/simple;
	bh=9ftKu7dQHFDXpM6UGAq/dfOJjxbZuTJGKpYyGqLs7qo=;
	h=To:Subject:From:Message-Id:Date; b=YRj4KtephtyrYvvvP5bjJOeKgPCx0YggjCwJctL2eQLBp32FVrJKT20cVJKhJxKzQx549S1kwKwbvMNf60rhjRUUv9oy83v5Zm7abajQBRauOAcL9I1tX7RvlOZXuGiSQoPHJyw7EaG5qdL6bNEcJlqsG5vVrqOW8YnugWcrFWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QihFVwDp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QihFVwDp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A032C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742417993;
	bh=9ftKu7dQHFDXpM6UGAq/dfOJjxbZuTJGKpYyGqLs7qo=;
	h=To:Subject:From:Date:From;
	b=QihFVwDpOcm6nKU7uH9x5k1nlMnfBfCAE1cMmpQ5/sCJYHGoF82pgO68FFyT1DDP7
	 jWjiJS3PFXXcSeUdk7x2kYHM0bFHch8lY1IWqbYJvu50SNP7Npf0m33sqODlae7m3L
	 1KSvf40KHoKXymvSMYL4bThzRszIIGubWNG0GdNCB+nLEN1TErTKjnRZOsU77hvhKd
	 7AzvBtNIhR5HasEIMFAxtXZS4krZmLHs6S72KSKbiEoWTiqC1ZPGWMDEubB+XKtFCz
	 qGO4+UFIZUOhIwnp+8lBdXm8mPjQ+7GFHX/ghhUxJGq/5IBggzlQLgABPtZfj4lChZ
	 odO5t6a54jWfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919B8C36001
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174241799358.19451.10868032515347184379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bb2ba8d895b07708014c3f0fe9d882f656651f0312ed6196fd022bd113f0cd1
Date: Wed, 19 Mar 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742417993
