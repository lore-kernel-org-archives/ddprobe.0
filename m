Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C181436495D
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772666693; cv=none; b=BlqhnMxuEGAiG3PbiF9t2ZDZWBig/nPDBNv2h7sF95rfwCAGg8qI+P38y3sjsll/nBtrqRb6U8fYY6FguVuPLpM+bUbht02+TiSG4uK7kSRXhRZKve0Ej9jRHpG/MosWMavMW9UrA+NwA0rjDowgNLHmnnsibJCkXudgSht8Ij8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772666693; c=relaxed/simple;
	bh=FX/BSsTl+nuEvnac2MVpbYqC8I4t64QmYjV6/xdSMGs=;
	h=To:Subject:From:Message-Id:Date; b=mUtwXLZ6F14uXsP6Wm1qQPCEAf22MPpH0WgZKmnTTw9LRJYFo0MnwPW52j9AnKSlTiL/I8XeZbmRbQ4NgAEsnhFxCc+mK7KzZtDYZ0/+cTYrgUbEvM0fNqETfgVXWwWAG3D1g1thKzZTAobmhvpy1WpDrKnrWAGwE9yS3DYuW+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d4QpXuCh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d4QpXuCh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6876C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772666693;
	bh=FX/BSsTl+nuEvnac2MVpbYqC8I4t64QmYjV6/xdSMGs=;
	h=To:Subject:From:Date:From;
	b=d4QpXuChlWdID268x8dsIzc1vzsVSQxRlTQ6/Cx1s+/DIKwBs4tE1ktvsdhJZeg+u
	 I8nsLvtV65CEa0TVix7ztLjzG/IyqHtna9hH3LgF/HjDQRG42sgcwQWxePqoG+IzDJ
	 fHgf9Wfca/LSHReCIzGLeAvgiL5m1nxMVNQXuFlaX6AA04xY0OAAOdHIYdP4lBXMOC
	 +ncbd7ZuVeyG1oIbBsezJEbsVoxH85gPAwRCDNaBR21yl1orHJs9iG1RKK6HlniZsI
	 j7Hw1kGPEIMZETDuHV0li4Nt6C0TcMGSOTh9pg9pf9kO81XC7JLz+N9o8SHYqYQbYC
	 EYRa9ZqykYyJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98203EFCE53
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177266669358.10912.15535462531740953408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deffbcb8b07a6396e4968f6fcfe649f4fee33f6c6cf0a83d24af73c7c2e7e7bf
Date: Wed, 04 Mar 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772666693
