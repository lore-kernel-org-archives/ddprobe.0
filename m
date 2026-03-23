Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED58212D7C
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774241694; cv=none; b=cUeXHdumSAHcidt+u2/AX8dF/+laNwppb6+IVHmgbYW7zScx6st6gNzAvC4GQifBLcOg7eZQlYdSviqxkKmZVRhEwVJjGbdQdPZl2Gvnb2MXPQAaKM48zUNXRp/H8hlIiEI/jJ7MWTCDmRXn+RnQ+JAY0Xnw41f8lqhd4DYfiNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774241694; c=relaxed/simple;
	bh=3dtb1jG0oK0p/JIKi/xxru+K9imR7+vXkqYsRO4LbGA=;
	h=To:Subject:From:Message-Id:Date; b=mUCz48O3sCkq9+80CIdTuDECEGfHcCJ/bHBCeiwxNYk0c8bOsRy+gRK6aR3RJJUI4UURBMD0diBdecsvx9jbp4aXPXp6WEbled5xROUAZ0vOro70yEAbuQOxmX221wGdL3hmAFv3wPXdhIJYeFrplTKhM+fAPPwjfqLRFmqzBeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tH7XUdk7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tH7XUdk7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E45C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774241693;
	bh=3dtb1jG0oK0p/JIKi/xxru+K9imR7+vXkqYsRO4LbGA=;
	h=To:Subject:From:Date:From;
	b=tH7XUdk7Ptgjn+fq+bfzShpvKBezCe1qRfh8d7YhIzDHZvuu4hjeiPiN/8WBcp9ip
	 hTcwQ1On73URYhlicYbSRIbG0QQeCo10m/RIBsBCSUzrBGQnMVKIav4kyYHD/sCjOq
	 me84ribd7srDoZJIevZN+UCPt3AoC9O5+QR5IDVhsmdbKXxhNQNkdktymVuezzTIwZ
	 PcE5sEm/V7Uwwz0MbewPr+Pv73cUbAxmJX6lBc7ox1pmYAHtNJXG1jSxqj4N5WYSNA
	 +rbUDQfmxZSPiGszwLPVheE5iES4+FuRrvBWFcCkWNruCV52I19XEVTJmdXofPfg2i
	 jnY0A1+ghpHgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DA9D58CD1
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177424169360.1085.6805467951712554770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 876b9a9868965ead9d95f22149b891374d4385a8f7e5035d3c2b143fb53dc9c3
Date: Mon, 23 Mar 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774241693
