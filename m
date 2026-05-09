Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63C2D2F5498
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 18:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778353054; cv=none; b=rUEZ43Dycm5LE8Sht/MMNNBQNfVt9fzPia6Gl0Zwo8gpKE0DV7OwnYOiCDo5od+u7Z5Uw4/oEARxAQb5dxKDHO2whgtRE1lbD8TwoiRObGJCn/9w66hIB32RtQFb5JMhAT/xffrFiT9Ug0AfbiXyhvpRDLh173U6bFG604Z2TkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778353054; c=relaxed/simple;
	bh=GEHyeLTrJmGwlCP2heWKrnhTe3oCclSGwXw0TTgZpM4=;
	h=To:Subject:From:Message-Id:Date; b=mrpo/cvVK1pYYWf7Fcj/ZIm+O/jnQq+ADNiYtViZbhXyTHXZSWN0xxxz22RNqMDY2ZHkzARyYZ1oObu3XvTQJ/1Xmg9j6tCorzgK9wG9Aeeszs+5V/eCABi/XYpKXLfeIRgJHGgYCS6Q56e60AD1fAxBMyocOK4W/1sz6rbv4cQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fggHr7xl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fggHr7xl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0819BC2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 18:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778353054;
	bh=GEHyeLTrJmGwlCP2heWKrnhTe3oCclSGwXw0TTgZpM4=;
	h=To:Subject:From:Date:From;
	b=fggHr7xlVlRuBO8Lrdhgm4wqgyo7FcFlSF/NAKwek7XyROsJBkmDHO+jbc4jh8tq0
	 nzFeae9PcbbAhEyEtR8dZ5tHmuGJ0hYAfwSYk4llypMNwACl5JgJeJiPc6MBz7Rc7u
	 ZgbxDuNBVz25VJTWXjbIPNmmUvffBSnRQ/XAL3iASGq+wDUHTWQLZj0nE4woFP/xZK
	 catgQ6vQwYSucgPsPNBnhAYXGwl6dCPqxNPKo8Ht8Cdko0WBAX1BWPEXekiIuBn4In
	 Zyj+Z7t35KAnr/2tYTnGwQoMPb1FWWotEifntm5fcftXUp27NpkwSxGvT1f54zaLmB
	 pRXPnVuDN7Xmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6CC8CD3445
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 18:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177835305377.22343.17113484347031611822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fffa30d9965570ba9d4586d4853a5855f2fb3f3adbc414e4f36e8b4b06945b4
Date: Sat, 09 May 2026 18:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778353053
