Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09F902264D3
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770680034; cv=none; b=kM11sDu1jyVfaPcowKuOmLdBzlUd6xmD0ynq41ZrcVSJqKVYPDroS2O/3Ti5NHRX06x6LQeVMlZZ8FSYDSAmJUgRuTcK/V62ZxtWDiOWzdwYkgg66Xea7F3N4PrNdojUUqrvzmqBmK/yZSQluUH9s04FC7UOEL6i2zAfEMQiKKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770680034; c=relaxed/simple;
	bh=PJ2yGG2qoAIGNKy/Gy8Zowhou+ngo9H4JlB8tC4Dz9E=;
	h=To:Subject:From:Message-Id:Date; b=l8ZPRDuFS3IhgvCbhKEl6jSp11BdS2D+sWIVKLSlW1NkLn1NwD7/8/6IeYhKkoEPNpbEIEWyK/EJIYnni1RYG6Bhm4vpuKm6OycJDBDxc3/6rkAR6JSv1xKTiqrcGMD4G64lXeLeUmj95uojsojpwSvm0CPEBJbmr/HFEiZQ/5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D8FNKUOJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D8FNKUOJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1FCBC116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770680033;
	bh=PJ2yGG2qoAIGNKy/Gy8Zowhou+ngo9H4JlB8tC4Dz9E=;
	h=To:Subject:From:Date:From;
	b=D8FNKUOJKegu141ufCGgAsh+9VDn32Sb/kyyQQsDfKZh7ztCN45Utk2IVTzXsQ6QD
	 cG9R6KYjqMeIqqgTxbplbg0GMhjiFHTzKdgGH2WmPlTsCagqVBfjsghZoXnfjaOtfS
	 cvBXB2R0Ap4rjVDqJmwIovxGSq5bGV1pwPw4K6DDGFM8gTNHVhXi4iDGi/lRS4e1oF
	 4JO2Vk8IK5P2MsD0L/3TxbDjVMWAF5xXKzxxSvfidVdfExwWVFJI6jGHt32Q+JZRE2
	 Kh87//SdH7nmBszcUEYMDK+izcG+YTltpIhiCy6YquKBmX/HPpieVX7x08i0b5a9w9
	 ken+VRXvPSoWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EAA9E94624
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177068003361.24252.2622901642777455935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0dcdc59763621253114dd40372abd62bb3b87b4e787f0021f44c85abb7f44a9
Date: Mon, 09 Feb 2026 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770680033
