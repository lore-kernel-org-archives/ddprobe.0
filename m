Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2492E4C6D
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766732634; cv=none; b=my3rb3qqNluOCrSyYuLLxJcy3aJ4yBesqhRIAK35r2P4q/gXLb6HJ4fh5re5VdceVGIlXdwk/Nxp74rRAKuqp19ybzsN3Tgq3CJKzZRSt1Mxa8on46R+INFgxSGYubcMVW+JvxAQeqQmtO69Pq5TL9GA/6SrMZxKLwmPZL6EJlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766732634; c=relaxed/simple;
	bh=bdJvdVtuqroI0MpekukjPdA4X1jbbRtZB7S5TBn4B60=;
	h=To:Subject:From:Message-Id:Date; b=mw+8y9EH1o5x82chR7W7D6AfBzGa5e1gkDsI1PfoybdJ1VYJV/Bl/CdQejvuoyA2EjvLLCgfsTHcnft897m8SeF1CWtPNmf5AJhA5YvQ8f30YfDKV0h6uIhkN7dwSKBVc4GYelzD/lQfU8dv/BPVZD4ojz0He5nXdI//ry3fjew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=STym9pYL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="STym9pYL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43B0C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766732633;
	bh=bdJvdVtuqroI0MpekukjPdA4X1jbbRtZB7S5TBn4B60=;
	h=To:Subject:From:Date:From;
	b=STym9pYLsrWlpBUF4sYbLBYi4Hz6n0BhKsWH+d4vhQg87i7DsqmP8S0L5H9OSvGIp
	 JRlF21jCba0EWxEymHDfxplBCoGu26j/vLRu4CP71LXw8iNZUXJ20fMmf8uNJp9YAF
	 NyZK+/K58WLSVKcHwAIlFWAa34xEztemrqjBoUHKdDU8vaE1dj+ext8MI6/Y97llft
	 TA6cJmY3GZix4HLHb3WS7B68n6AMbKyfQWqDAuAS+xx1fVLsBVA0iTZUd89/GEDEQw
	 5Lno+SqbVS6usYed4pABz2XsuwUcILz9VkE3JVkcg+nxic5HxqB6aYvZPW32r1+IC9
	 3Hv9GtGH3ry+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9198AE82CDE
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176673263358.2487.6948439002655508603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 200a039a0e23da5bccea98205c1eccf0ddc146b5a4cc452ffe573eed90c43b68
Date: Fri, 26 Dec 2025 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766732633
