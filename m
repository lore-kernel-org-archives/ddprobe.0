Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C747398F88
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 11:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764846174; cv=none; b=pmPLRvTrpfC7g6XVA/wCF7PLITTpWdMCuO8OofBkuM8cTGTkWHXMAa4qLywVHG9tJXtcDcROSxN+9d6P5IV9v7uOm6LhQO6OXLTZR6q5H0oIlScTeh3H8c1ZNYl18dNC7XBbYMz6R3FgkVuKgwEzocAeA07FWAS6OJr6aZjDOEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764846174; c=relaxed/simple;
	bh=CUMJJRCl/IWa97rwG2D+MDCuqtB2l8nkwrMCEtinzJY=;
	h=To:Subject:From:Message-Id:Date; b=QY1muNXoZLQVyHWqFKxoKPWgg4bgVHmNouWcIZ86lFs8uT2zzvZOdGCwF3qe7pv88MyKB8l9WTf5Fb6jMg6OjKLsxQS3NyRXbzl2vKMAaX4i0Wx7+NyCwAs2r0vark8dHyw4wONblnDHreYK/xgM4285R+rPfEc+fyonQWsTURI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fMNLADht; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fMNLADht"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A650DC113D0
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 11:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764846173;
	bh=CUMJJRCl/IWa97rwG2D+MDCuqtB2l8nkwrMCEtinzJY=;
	h=To:Subject:From:Date:From;
	b=fMNLADhtnxXez+crBquKlOTHVKZX6CPXIrN8cqjbwf2QWjVRRtVGy7XJu/Qj0RQ6u
	 pzd/CgJW6xv/lA5DLNdsr66nkZSq+tP6zBwZGmgnBod/JKbckmM7ZysYc6PP567FCk
	 BmDzYg6gr6DYwtxNB3bjZn4JM0y+Z850CXLB+7rp9HTSoWTmOw0VoTEQiq2WzR32kR
	 1PDc/CJ3u8wFEiusDp+nJFIv2RIyXTEUI/ECIntAsZ265K/qw56+yDgejizNuFAt8K
	 DYFyKCu5EczTAAqk6zx505vL1mEoAUMOGPNMZ0FwqiKJZD+TK8UhBMupsr199ZM0Mh
	 dGGwcYkDt+GUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C92D1F9B4
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 11:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176484617358.18460.7344792402658804327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0f144df80cb9576769f35cd3bc8d15a33dfe917b13596a17e86082a181aec3f
Date: Thu, 04 Dec 2025 11:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764846173
