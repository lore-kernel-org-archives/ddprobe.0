Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1CE3D3D10
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787125834; cv=none; b=pRGmRCIW/QlJ3WYjgKzu346hweC3Caya7qsgHWM5H4+QpzDQc4yaJUUobWXSLizo3g4aHsBWXmtAGwIfFJtxkInX1sCCwB+S8bzvOi4eh3OEb6miJw9kUsFavAPrmCZvO2hVg4aoJxOOYVyAC5hPyjjj5fU3Q2LoIN2KsttmMyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787125834; c=relaxed/simple;
	bh=d7txWVoUzMv0xS2kNprMrkmwT4reQ85RU3gG0JfgxTo=;
	h=To:Subject:From:Message-Id:Date; b=iO1yt95fTN0x8jLHXsiDZ6k5+VUGxnVhiOni8a6Z3h6Pn2UYv7gjmDvN7dl5lasi5AzPXtypI7SD2THHDpYQyPUiF0hO14oHqb/7SV4JhQ8S+CgbOQaRAO7OXw16mvR3fHNXR0cWlGsyEkG+Uql7Efw1Dg+cbvYmnGKHl4BMY7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FaAEYlNY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FaAEYlNY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D58B4C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787125833;
	bh=d7txWVoUzMv0xS2kNprMrkmwT4reQ85RU3gG0JfgxTo=;
	h=To:Subject:From:Date:From;
	b=FaAEYlNYVdh+JxeOAEhJKozgNbiOkS0SoAgFPBwPr6ZOIOQa8mhShwW2oES96uvJH
	 NaVeczGQlFojYpxebQ178jyOPExnc7lvoczMfcJ1YyhOzdtttsPg228T2L9GYtBDYl
	 nT6H52yyJQbUQy2R383/fFlQ9JeGyNtGaNTfz72+JCqkBGA8qvhmHixROEM3IEuhJz
	 DCPVuke0ncnM7v1/R0wxq6Q36VG+Xa6aAHMHYvXgXcGkGqxGxR5YR5atQ+ZeSQqPmX
	 m7zZOuEBWRtqK4lPoTeq9cdmYKjXuaQRmSoTvHmP2JwxCdnmPJePID4sTd6qkAOl//
	 rq7fzVCTCmpLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6F2C5DF6D
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178712583369.19735.6666615300787799174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a24f1ad868854e56d61ee7cd7fba29883d57fa0788613a53b3d76fe4e14321e2
Date: Wed, 19 Aug 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787125833
