Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAA1E472526
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784932834; cv=none; b=I1i7ZJ10MZziwgnlfRCQ9gH+g/VvXtxTCdVYTZCe3sLOWkW+qgzPsQkRPm/nKGR9nQC5g0Y5y6ekz1hoqEUZlOJe4gkIFJHW4MEw8v20PWsut/n76eGrQwD+YYlxxGEEQEy4h6Rvv+QQ/aQRB23+EbijIC407iZFKAN5WvlwqYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784932834; c=relaxed/simple;
	bh=516Tk+IytNQsS2/VmKcjZamESBsyc/VwWQOXKb9YRXE=;
	h=To:Subject:From:Message-Id:Date; b=b2x7CIbs6NaWkCSGmPVfZUCRXvaVK3/ZxnaOX9Ad9WtGUPi8DyLI/GWKS1MVq3UBnbiJHwhFqPfEnYoICJM2I38kTNOxWX1zgMcOMF3XF1J82FRr/fmPVNOdGDcDjAhyetgkIqepmLESe7riHJ0fWp97mw5V6CUloJV5crIm/Rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LiP6ouqW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LiP6ouqW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D24B1C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784932833;
	bh=516Tk+IytNQsS2/VmKcjZamESBsyc/VwWQOXKb9YRXE=;
	h=To:Subject:From:Date:From;
	b=LiP6ouqWwux8rTs6XGeIWLyoiqgVsc+YDs++UeHzAAVfHoQnZWBvNk7Db39plj8yg
	 UN5epU3Ttj/aS8JPprDnlxUmwl41KANx2d0ECYrP1Py3FtIESKVT3ewp5KbzP2xuUO
	 IEEzDsoCZINVfpAZN3C+nW4ibR2X6KEvcxmWrAh7ysYThCt9wdT0qzZZ4hkg/Zr1qT
	 7iMjFDhLfyGBVTwP73s2OMB2q0XxakV0klZgwQP82df+unDC/3zc0N/0FHz7e/oZMb
	 KW/wFC+ymssLIiz/66Ho1GZZJ4bjCYv9sOMWN+faQxE0mJj+Q3iThIT0Ha2mHK/ksi
	 //EtCJft5hqUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D54C531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178493283368.14249.6687573239754641903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8702936d01036c86832102619d4d69774a1674cdbb225dfcdb68375d47693ec4
Date: Fri, 24 Jul 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784932833
