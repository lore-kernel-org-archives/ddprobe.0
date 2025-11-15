Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A2B19DF66
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763191194; cv=none; b=WQ2Cs8stj/D5bVbDnewYnCK+u8RqWlZus/sZ0VoZaF75z3hbzKeoS+xIKsyv1N9Hb8WobpDZ8mLTAr5bJTAwaDF6qfcsTJFPyaTzSXR+7AjBPcOPBjzsboRN118mD3un0CF1RHDb+LhHkxuchgyLbgLUVqEIjrK/rQMw0oP2dsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763191194; c=relaxed/simple;
	bh=osFsiwGBru+QoDLtjEz96CQVaUErI0KSEIKzCqf3gPs=;
	h=To:Subject:From:Message-Id:Date; b=uhOWAJ9Vfh+HUgDVHlbqbjk1c6YeLnN8btzEe+VJrE0FnmcTkMpohaJa8x1aQVtF0s8TtYlVvw3ETIsZ2EDsfFiUNlrs4EQCZv2p2SdP/+pHWE4/n9JadgupOlFSDB8HZ7w3ineKEEBcXsEw4KGnd65Sw8+LII27l0LS5aVTYzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fxpPvSVV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fxpPvSVV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F9DC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763191193;
	bh=osFsiwGBru+QoDLtjEz96CQVaUErI0KSEIKzCqf3gPs=;
	h=To:Subject:From:Date:From;
	b=fxpPvSVVcahRw7vlziJYtdW6Gp5hyOf0zFYSbhrWMIcgauWklPCzjVRrKtdZYr9Pu
	 6FHZ4TE/6btN01z5HJgs5L+sbsXoLtUO99jJ+3keMHsKdBUUfCEf4VVsNx8G2wofks
	 hSp00ELz9vt3A/6CjA005eeF9eurjzQ3z176D+tVlhMSsJOgiawlMV7nS2G2FpCMmf
	 YJj3RRX0S9Hu3fyJXS1VK3QGOzvvcRS58qGzMbqUNckQZ1IQUhtiJlxfZVExJIoNTh
	 zWA/xSBSjJCfsC3iRsl2HI230TEoey+HsXod+ufTJzy3WFKmuqLDfp2IFb36Mt01zB
	 /4hH+JBdqFqtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9805DCEB2C1
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176319119358.13871.9731026805087787659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c68419dd9a85e21c358be495de9f3599b72c4000369d7769b661634ddbdf9ecf
Date: Sat, 15 Nov 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763191193
