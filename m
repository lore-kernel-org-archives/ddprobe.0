Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447A42701A5
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745457594; cv=none; b=GtRFIF2/va9CeFvNqaASUfFhCbl6K9oVcCE9SldFxYcICGsHivzqf28wI2WNNT+SAfe7uXBdcLKLAQCG3UZLrtFsGik3/312/iA3oeWuoF0jVBIDF271t4g4T6N7Tv+QC1JXZ6PO8gaSRw3kZdeYW73vvs0a4vdJliFp5i1lZSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745457594; c=relaxed/simple;
	bh=L/pXfeJoVInXlVk/c+2eqtby0RgY7du440Jq8Gh3hjo=;
	h=To:Subject:From:Message-Id:Date; b=T9xnTHJWjN0+qnSVlT0eKzKwBOY6ubBQrP3PU16dwOQ1HAx8O2b+ozT2mZ5F6HhsUVhpx5Mf+bW5IAeiZsWe++lLYOh1gSfo8APGzKltS+8TBqaS1qc62/M9XFPiFEj4cOGJfjUzOGtBtf1FAVIn43h7jpLG5RNFNHcfkEpIiFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qzda9VYh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qzda9VYh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05D9C4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745457593;
	bh=L/pXfeJoVInXlVk/c+2eqtby0RgY7du440Jq8Gh3hjo=;
	h=To:Subject:From:Date:From;
	b=Qzda9VYhAKHPidzZOJfLE6MZgqJKeKSE+JxRs2e8LgUdPROB4WsHqL8p7cUGvevpB
	 wWjMlvo4xW30AmHfb0ovoNVFPs7QHsslGWgGTr/b0rtGoz7LhjpWVIOxBAWn9fYhcZ
	 zWemwo+ccyCOnwjNmdJoP/buyj5l4Q2OLC2+tI2GPJUKafc67H+MsWHMIzukIv6bkY
	 5qsPPSfHmi8q5tf8ZgZSpTFJVyf1WUbxDoNEJCNr3K2lSt9a+luQCXjs9Rd0TDWSq3
	 GKhZvoPe1+UYIX9iQpD/k/kLPxDcPgfPyM1YtXqSuJFo9oZgjz7DG5RaY7M9zt8GPJ
	 pUDip5SY5eorA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3D7C369CB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174545759357.23888.8052044853976753151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8b543ffba2839a091f5bc41f84635348e4458bab6ad31a63446a4e8d74d8583
Date: Thu, 24 Apr 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745457593
