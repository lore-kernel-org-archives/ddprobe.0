Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D46B2D46DA
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760745594; cv=none; b=bmrPpZGOuz6Eez5S1xsw5wjuRhs5WpPR4UL6Js8T7G9dAuq9TsYVlxiZPjJugLKPTY5KFGQqWzTWWnCEimSu3oaxY8ewMpoT0zWCkelpeiBy6SxHetj4ag1nwMsxk5yna9Vf8H1OF/JwJklcRGZDe4i/cgZ7WUcjs4PAnIRrqzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760745594; c=relaxed/simple;
	bh=KgFQbQXKpXUfY13UxGZma2SnbjnDZTKVjMTvE8PdhCs=;
	h=To:Subject:From:Message-Id:Date; b=KmkC3Us1kykT64KFVCRbVkCK2vIh5xmdotv2HjAXGeUCaHcB2zhXbMJOA/u/DPE+JRX9yrPu+EH1snoJGWwajnObNEz2PIXCWKAkizYGNw0iU8UnA/X93Vhpldp+BGpva9qATQY43Bqba8UcEYkeQXJSkknGet8Yo4HJEhdkoN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r4bIJs60; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r4bIJs60"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F954C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760745593;
	bh=KgFQbQXKpXUfY13UxGZma2SnbjnDZTKVjMTvE8PdhCs=;
	h=To:Subject:From:Date:From;
	b=r4bIJs60GaDhJ70uC8s1ov9H9RSpwF9vvg7zX4g2wFFYfC8wd6gk7dNMDfodXWwL0
	 7oIPcENKvrzKHzH2d3Sg6KsXcBOAPnYijPrKj4ACliUs1hVaUUgst60czvB87Sr8JJ
	 bM4cfCZRj23m7VcGw7IT3Nd5uW52rRB5q/1B0e+Pq57ONX3mkr7b/dS1rDiOOWgSCx
	 k9VZ6E3x7HGhArshgKwMHgJ5t/PVGGvEDNqjlr2P2Y1gTgbu5q8nETSZsNrdbX9Lzs
	 3tYQSa/jdyG0930pm8zjBxlnLdhxh991cXDf+Wo+Umztw2ulpAeMselW6xLlgpDVuS
	 K4DnXe5phULYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEAACCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176074559358.6764.6322294187609930558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5a89fb9b05f799dadddc4014cbc1fc2fff9a82b32ff43e0e77ab5b9032c813e
Date: Fri, 17 Oct 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760745593
