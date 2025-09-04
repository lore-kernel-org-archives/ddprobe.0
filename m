Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB5728DF2B
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757020194; cv=none; b=E+Jgzt7k/m9648r6lu6IXg08pRTweHhSeWAPkxncQYKq2m+T2pGExxmdIfcBrsNITis5m8PgEOYCmJFvIxSWDwR9oPTK+OELdYvDYrM+hqUyT+GhnNp2q8CObvqQDwupQ3zXNQ7nWNIcp/vOojSI7sbQxE2IgODnhUfC/HnkTOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757020194; c=relaxed/simple;
	bh=7gc/ITxhQ6DrVWA6d/0hN7ec8Iptoo9HQ3Bnyxo+1u8=;
	h=To:Subject:From:Message-Id:Date; b=bioPhRjH4q8Rx11h4VnS83V+m6Nfs4kOLNcMFUAjT+8M5ljd2VrwiILjL2gV7QtRROgAowBAZUlr6Gzg3vDAGeqKviewaIVqWI0/gq3HnRsOfIgv7wkj7D7s0I8BjM85QGBa99vcTlbfYMp5t8WKQBUyBcuroZSdVDbZoslrfFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OSmjCJyu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OSmjCJyu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2519C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757020193;
	bh=7gc/ITxhQ6DrVWA6d/0hN7ec8Iptoo9HQ3Bnyxo+1u8=;
	h=To:Subject:From:Date:From;
	b=OSmjCJyujog4+lWyIpCJOF5QoG3hg7OvLcIiB4M96J4Wh/n9jsHtrySwfzZh6qBKo
	 WUBuJ8vYC5SxJv4zxuC28X5EevoxzR/9wnRCqQ21dgwLpUVRYZaQAJKxKaA+8X2AO3
	 kVZEudHystkPdfpe+bzwK22Jq51hgJ/jnPfUcR4Qegp/HIK8BCGswh0mMYjU15n20M
	 shWXYNTUrcrHzfEoNVSj3XLUCO1R+4wtig/4UxO2WJ8ArhzzicYpiP5UBX7C4AJBxo
	 2gPrMsM8LSKVH/mAEOZaB+Vhf3YIQjYVisr7k9NhLIog9+laLp/O4wRcKBtTQnojMU
	 F+sa5KMERX8VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B78CA1013
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175702019359.10999.11856739968976097363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 096e6969276b34428073f2d7a461c899339390abd660afb52f1fa37037edea8c
Date: Thu, 04 Sep 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757020193
