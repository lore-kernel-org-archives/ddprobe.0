Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200B4182BC
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735770354; cv=none; b=Uq7I41fjpFg6Vp1e/ywTSTyz6GVtzpuk4zuFh4Ifuwv5JUm2R6UIgOQyYLaqRDBzh6fwG2GbO3zlC9AzkylWF7prMtTzLBsIhvrTMB9IovQr3sDXta7fEcSfBMeXQONgNxKGt2XFHiNw/us5F9epjQcl561r/fHDDrD1xV3fjD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735770354; c=relaxed/simple;
	bh=Yl40hilP4BbDYuL0jFBUU6J1QDi3vT0h0S+5HkbbpKk=;
	h=To:Subject:From:Message-Id:Date; b=j3AbXehFScoXhvO5OCEfz5rxv8hCMDVpD6vIlxRQ10JxEeBih2pcKjooZGWHfFoEnNzPz+VxWD2Cl8MmB0PdbuHSz6owEz023zowCz4Wdif+aAxq5sUpvdIu15SG0LQIsITIAeUOdah3SsRsUcteDTpTHgZMp4sW2uKtXJyh13k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OI7cKhME; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OI7cKhME"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A751BC4CED1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735770353;
	bh=Yl40hilP4BbDYuL0jFBUU6J1QDi3vT0h0S+5HkbbpKk=;
	h=To:Subject:From:Date:From;
	b=OI7cKhMExeE63Qij6zt8qYvoYmP8Z8AkdjlBDxFkx/CGcbKcbzM07jRcyShJDSOMK
	 KKbBrThZbOaVcEX9up1mtkNOtrpCjdeNh7N9uiJ3OI+vM01zxl8EzLyJd3zKnoQxxg
	 hDe/ZAJF4FGpgFMd0RCuz7Xc9NKnJLWMd5EVXWhfkj5YTzpoMyzI43yGb74Rcy7Vov
	 ky5NzxWMOZUYbMbYc5RiCkNuf7nMjirPG4z4tnn2zoQrbdaiLs/UkJ9PQcYUqdelVn
	 uzSJcRlvR9a4D92VxVsBxXQfsPrXtlO9H+uvwkqQE12XSsWehB1DLhFPsjvO1hnR2Q
	 ebcal97Glq8Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93618E7718F
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173577035359.27621.14795290829176317122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d8000a0c9e3f4e62a040d4ccbf03dd65b801fddbe7538fa8e34e1f584aeb235
Date: Wed, 01 Jan 2025 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735770353
