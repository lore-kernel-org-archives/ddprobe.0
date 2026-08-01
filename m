Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431CC2EEE83
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785568234; cv=none; b=Mt5Fn0fIjS61UM0GOe7Y8VOqPD9FmhMMApd6KPaRvqSwUhWmg8bkFf6540bld/x93V0MV7SSgijKJr0tGI0RUVQpa8WscDOrdO7mMOY1RQZ0Sd1Q0j5QKna1JqikpSqn2OgGZjUW8SFzP1i4ASwC9NAVbcuVmaM7wO7N0Hw1XXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785568234; c=relaxed/simple;
	bh=c2pB0o6hBpNK9of6TImlYWC2Oqzjk8SFTym0Sg+q7p0=;
	h=To:Subject:From:Message-Id:Date; b=n3Bwhinw8tKYiVXMKA6kEHMd0m0BiQOxLcJqbXYDcxRuNTZQUcMtM0Bx65wqBsLVENgiz9B8EP6oqWb1lM/xfYScA2ThX5+OpR4hCzVsTHZoD5Em+ZLL41RpJRFHN+WP3DavzSS9l3RLtmrbc6vYF4QL2l4M/TZRKtXB29BLKhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=spxmawfB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="spxmawfB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D28D0C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785568233;
	bh=c2pB0o6hBpNK9of6TImlYWC2Oqzjk8SFTym0Sg+q7p0=;
	h=To:Subject:From:Date:From;
	b=spxmawfBvd4TZaOK6gOmUHYAblqTzylGPuL6CjJZCISb2kb1yjebWMvlz2B7RMSKj
	 A45p74X3K4fDAXxilGbUOIpKTLxt7suIaFi2T1I1RHyK2RF7L4/PHid55+MNx58mFY
	 yadjyiHdw+rLJWrUpaJ1VCtTTeVp4ydCdmY18Xe1O2SVNdtB//JsQPoPrChaKrnol9
	 /Po3dND/csl3s6lqih43EEw/RQMwW53glY4/rMb9d4uRQy6sRy218WtEcxLxBYINoC
	 p94XMLv2WkdwYJwWyOpDw9NXWYF26WNLj0CV0uxO9JSCHfBv5NIEQHu20cUbEprzWe
	 2PgoGiU8p7rag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF5BC54FCD
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178556823368.20976.5776562544671146337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc68ac451f17501de354d2cdab3becbc1b1eabba1045ef94f5eab09f87affb66
Date: Sat, 01 Aug 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785568233
