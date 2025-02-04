Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E4E521127D
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738674354; cv=none; b=eEq8pQXF+vQVnVk9B+QXieLzs7+4jDumdwewDO3TgLQY6dd2XqcGW31ZvP3FEIXDo5sZB+ltvTGMe2M3UjDML3tZZxkLb5SwFaxIPhWqR9lWlIXGdqPFqvCQ+fcCXcq42PufqETFqASLrdENQNpy0K24FPB8ZQXHQW9t6L4xI5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738674354; c=relaxed/simple;
	bh=Rg52yYerdHfdXAdlx3DpiHJCiWrQWABXuH1ZXvdFC7o=;
	h=To:Subject:From:Message-Id:Date; b=MTElpP1q0arEdztkZMOjFz5+zOrfH0JmIlmO7mkpBr2AS7P5xQNjkiEylJnX6dzwvw+0UGK+YWUJVgpqMoxMnAGpSYOSwa0LUcdDXHwEuRwpMxL4qB0nqGkNPIJ7Zelk3pXSXoGAMvsGnZPxxaIkX5xeOc2ufieM2p9z0Isgk3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ma3owAXz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ma3owAXz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B14C4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738674353;
	bh=Rg52yYerdHfdXAdlx3DpiHJCiWrQWABXuH1ZXvdFC7o=;
	h=To:Subject:From:Date:From;
	b=ma3owAXzgg5QFOqgpsuVAGd2WYP29kXQKaFXT7S/3yv3ku+5++PgJhkvBUkIruOA+
	 IQ+5lcVbvbaPVHAZTVy9sG9jg/U1hxdDKyBhuRsvPBXgHQeOYiU+d5TX1/Psazm4JL
	 MyyDDvTxO91phCmUfmskQXtKiS9BhAZTVYluemJH/T7zwlE5CUCH+GIhg2dpP6kSBJ
	 7CWWbLJejrkallEq+NAVvYVE7zi5hZnFDMFpnYvdlygSyw4VcPpZl168x8db5ArLVT
	 0/NcyOeUPnDfD6kpAvlQ73XN2QPgKnBoFniapTvq5yyAq/b9y9MVp9YkkMAS6+Rtqx
	 25XUXJ3miAFSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9777BC02194
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173867435360.15257.4716664539212793977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5b88b676327932d8af4aa5029935e9bf5a561ddd446ec23d48b431dfc67feb5
Date: Tue, 04 Feb 2025 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738674353
