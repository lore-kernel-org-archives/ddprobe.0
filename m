Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8704E3781
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 18:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778695834; cv=none; b=g8RjG9JutWDFr0l2ke98ijXuXojauCTMiPeY8AQ915wKseXgvjytMPCKq5x8A7Mhewr+eB278UD+WILjMS/aTrvByL+8m4Appgn3WL4oOzcAueohKLKHLc++v4Fep+vmIqnAHJHHCkqlvSGoWdgHd5VtZ/VmzQ6aAWPC5sByTqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778695834; c=relaxed/simple;
	bh=J6QzKiLSMVUlBu3xOpzSnE4vNeWZumGTtXrTsSTv9Mk=;
	h=To:Subject:From:Message-Id:Date; b=BIrFn/nEHHlXxzIL0utM2tQGeRHeymPxK2bpg/CqvdnuaY9Dd3eFp6JZo0fMX2+vRwOoNlQoYzcF1VLg2wS038C4NAfbgcL9+raGab/PQ2TxhtiUl1WLcsFiTlB6A2D/ZXBV8XNrZxR9FjFP+HQpHOlz3gqWFBB2yBVaMhQyW5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LpQVq7B7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LpQVq7B7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B87DEC19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778695833;
	bh=J6QzKiLSMVUlBu3xOpzSnE4vNeWZumGTtXrTsSTv9Mk=;
	h=To:Subject:From:Date:From;
	b=LpQVq7B7BAp9hmxFUQG2Vvi0mm496RMLKnsZbgUiGHhNTJwfv8+oVyc8CCFgKAwAR
	 tqtHyO0YhMb5rOG2ltYH2BudHXGsQHetNpeuaYoKIfKlYgtFKNfhfbr2bu25hxFNkT
	 TD/j+E33lKrp+t7nOSnLvJi+wZDb7r4HmDNW+DcrOWlgxMS6IjdOZJt3VvfpC6vEuB
	 hQy/CizPkw7S7GJ6qOvGcfgaqUWSrw8zsMN9gAO5X1UQeXlc3D1jYicc2sxZ95rHly
	 BASqCT9pLuZUhkXU6Rp6u4EZ8+B16HBg6xPTsFrAX+P4xQ+PUOZHvxfMH2r7MRprLb
	 hW+ZHP9+15gUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA718CD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177869583368.20997.17096507548970407897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 399be9080edd77adf02b7d8232481fd8085099e2203f5a792623fb4ebe80d77f
Date: Wed, 13 May 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778695833
