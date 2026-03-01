Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1870D19C553
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 23:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772409294; cv=none; b=D/Xb4USTAR4iQPdO215cJaps9CxIxojLUI5S4oECIn0Rh/92j9uvxJnhBTJHdq7v3am0X0/zteudjlOJaxytPn+405O56d2eg5V8I/AL2Q9igOa0B6LhkdIZ0XOaYmgvQDXsNfNfWif0E20Nrk9JqCsR18nM9MWSTIU+/CRyFhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772409294; c=relaxed/simple;
	bh=iHfLfBvZ1GUhxdimPR3tx51Q1fz/co6/LZ24iWp9FBo=;
	h=To:Subject:From:Message-Id:Date; b=Y+JilsJFyAZ2pS91g4qrLd0L3rXKn9xsOfZzWVHLLeU4yjGhUAxfUQ3LIgdtyLbq8u5WZ3XU3hkxMxkGgGZFwmPaYJZi3w/sseZtASdx0EIiHV4c0Sj/+PRaLZC69NsrbRKOCXBIK+UEglPB2h0ry5IaPMvjUi+k/Tq/ZPegh6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ol51HFdI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ol51HFdI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4833C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772409293;
	bh=iHfLfBvZ1GUhxdimPR3tx51Q1fz/co6/LZ24iWp9FBo=;
	h=To:Subject:From:Date:From;
	b=ol51HFdI8oikrlPeJ5SwtFVvpVflVHBoVpx8fY9Rw+vcICpMmBEh0HFukeDauK8GR
	 J2WiSrZ8A32ac9WUkjcmw0hRRIjBnCqLWJpzqqSRU1GuAEo258xH5+yD/tjkLHc9ED
	 zTBP0XL65shIasCeHdqRBqWuYNjwM5Z3g1AE4ztGp5h/YpVkUmN7v6qU4N9LZ6psWB
	 1E0tl6cYgHh1w8RaHfN/rjF4Q0LoBbnkaPvOmoGR8Jk0jb25cMC8g+RQfuml+oi2Xl
	 8DqjjebGdKSKJZThbWohN4jq/XBK+eJAb6dPnE7mhWp0Na36oT7HJO18dGQIif/R+W
	 2WtU8E8yf65WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C2E8FD0076
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177240929359.18730.7058609583224062688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c9ce137d1bb16656324e73890eadc061e431a4eef084489aa4ec4bab688dc11
Date: Sun, 01 Mar 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772409293
