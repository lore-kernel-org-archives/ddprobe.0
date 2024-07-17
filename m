Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9E9628
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 04:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721189723; cv=none; b=PatG8riXQfMK/4NBv8JFG63ZtbJ3/YhsLeFqHpWjI/zqcOTz9ZceXSNyWFtkIj/77mIccBzw00UInHMyQXVTkhZ5C3tDQvk8w3qrjufP6LuKGsn4B9jI4tBtQzfA+mDakY1DeCfT0AyrRvjZwmmYjN0QVyVArxefo15plcjfPfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721189723; c=relaxed/simple;
	bh=pfmyFtk83rC8CS+e+ifE/qcai1AsPtAuj77Bya6kTEk=;
	h=To:Subject:From:Message-Id:Date; b=txuZhk12n9Ewaq+Ic4k0b2QVxfTPvRJonQdaotI7NZcGR3TvdGdyp3UUC4v0hFoXuWW0KPm6YpCspDa5AhnJ4iIGhv6B86+E/JA8y2PtyMBN+bJHsN+/DVRAtw05uNlu8oG6QMCq+uNW6+pwLneaL2E+XY4Ib5WsPzYqTq+oVB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GGB24mKo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GGB24mKo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9A85C32782
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 04:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721189722;
	bh=pfmyFtk83rC8CS+e+ifE/qcai1AsPtAuj77Bya6kTEk=;
	h=To:Subject:From:Date:From;
	b=GGB24mKowzeSlVCDkLs8R+Zsz8asDNomkzppznb03IGU5n9ql5vwPNzri8wMxWLnV
	 RGO6gPxj0174xQt+2u+Lai9an345EZgIXQGoVAOAyUOeogoM+UrTym5/jTSR9wYejK
	 +jg1KWk39YmVw4fEaJUduMOgOQEwnObONNQoJbOZaz0Ff0exkRWvxvFzYHaTTYyYOY
	 8sg5Qm3EjCZimsEXLC68Yiily/dohOI2MZUpr//vqqGfHmwTgar2Wt13KfbErDEVee
	 JcpMTJLZxnkG46+T6bSZ4G4wxNZb0fuuiwQ7+3REgfFOx69Fh4WKr/fbHTi5jFf7mo
	 CU4OgL7Cit6DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2EEDC3DA4B
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 04:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172118972277.30168.17480330350418243682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb399fcda180cd015a0eb4ceec682defcac69cb23639ac91c8d019bac00f3685
Date: Wed, 17 Jul 2024 04:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721189722
