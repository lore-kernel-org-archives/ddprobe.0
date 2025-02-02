Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4365517FE
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738491354; cv=none; b=eb3Y1VqoQCoOV1HMgzHaN7LS/FcouivnwAubj1D/59RWiZrTKfCK7hgpH1qfxsX5PvzHCyxb8AtqG/wtOO+exx/bW9bdJPDRY5Jj6vVQkb5pD0/ZmAjx7qj4CoIOtAwo9i5jEhBGvIoPZJKSXY0BNHgMiplI37Fs4VZslgWgr/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738491354; c=relaxed/simple;
	bh=rpUnvvSqxPQnKsj4QBEVHvFD4Y54L0KxIM9Sq7n+nyM=;
	h=To:Subject:From:Message-Id:Date; b=YMuWetn5msnM//zYp4lzuy4KQ6qhzXhEBoB5//KJiHcF+ZiFGDo+LypHb47iWqXoKoYds8QfMccqv0MCFF56fHSYX5Qtcs1nHvzIlkuOsyvQE1fQJ/i9TfB+VQd6/wDmNPzspTFlidj8AEHWJBghC+MM9zQGBXvJbTeCsW8YW7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W73yKMU/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W73yKMU/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6A5AC4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738491353;
	bh=rpUnvvSqxPQnKsj4QBEVHvFD4Y54L0KxIM9Sq7n+nyM=;
	h=To:Subject:From:Date:From;
	b=W73yKMU/8c8xv9vBbJzHCc/GJVLz4UnK5fM99qJrRT1/UxYFarruebRAw9kfdq45t
	 bK1/BQgEa7AHaRL5/d5DFJ46OYiRqKMpnCAd65VGb2j91Eg0+NP14VTmGFgNQxnUK7
	 7Sm5Smt0ztZ/AaluKa1TM3MuTPHIHRAmRkwmMBBLsTdzZfDXmh60kGRLBMRqh9pZPR
	 EYdkxxc3/izJALtgibx9lE6qMnPkA2U2FBt5yZF6sjMauvYPmYYb4G8tT71APkpISw
	 3L7LC6e7CC6dGEZmBco8r4Y0uQ+i7vhkXtw2X2ugsqPKrkHVwOOs0XvJSYdf7K8JF9
	 2Q5gBu4YkEe2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA79C0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173849135361.2221.9453787452690691161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 805a927da604c266a8615987f737c5bc6dae368418fe3896884984505e0ebf6c
Date: Sun, 02 Feb 2025 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738491353
