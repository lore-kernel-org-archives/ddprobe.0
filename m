Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12257381C4
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 19:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707507497; cv=none; b=ZQs4PSJw+pFDK/u6ej9QB6aueW4+4DYgqdGIBMzS3iPOKhas+dhwMmJ2ccP2N31RsU/ptYJPuSHBuP+ySJeL4oIt0LI4K67vj7SlCVJ6Wo/RQvuQk9lt4Ue0BvFJepJd+qPMYDIs4VNVksdKs1Z1tw60ZPxEBfihHqxgMQsuPLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707507497; c=relaxed/simple;
	bh=Y8yyhrGq/0trI38QLVWItdOkDgbFxrMBf7G33SUbSqo=;
	h=To:Subject:From:Message-Id:Date; b=o8Ab9dxbFN9pNK1mFB76Ga70BBglVb4BDlBaUTUg5S20//Tv8DagwB8yUpLsud1uaV1SY2oD9ZPfxQQLHXo4QYJNAQTT4dCV558F5VFnMrDSspz2crSCUamMLVMHObIFEi8xmRE9sSe9vfyQW+KpR83m4Ea8eiC0I6g1c1W4N5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJ18yPKQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJ18yPKQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81537C433C7
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 19:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707507496;
	bh=Y8yyhrGq/0trI38QLVWItdOkDgbFxrMBf7G33SUbSqo=;
	h=To:Subject:From:Date:From;
	b=GJ18yPKQ2i4Q//O+8dbu5HNGyMU8cXTQny4ektNfAzwmw9+iPUiI/rCLaGMNN8T9x
	 cQFFrHjKU+yNrykccWus3QnGf5V+IwykJjGg17AhUWx7Uw0ktFsKvd3sJoXacByoer
	 YOuFBC5rGWCKIGfKQR7D2Fy+0LF+/20WsWgTcguMuIcZQlc21TSKGkCO+YQKc0Jh5/
	 v1zVFW0Ao2+AJJZ80uUDRpP9wbwZdB6NIW2XmnuHLdTSiRWkQUx3d5BWZAUkzQuhsh
	 gPQMIfhzUn217s/HVUsESIIjDbetY81U6gWa6KxrpU1vsv7nQ/9xcbPcxkLkf9CKPC
	 Iuy19Td6VqKZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6526DC48297
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 19:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170750749640.12595.4348880129275971432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e699b21433f04ae229ef683befc80d3447223bc58d736c8b2186efb497836abb
Date: Fri, 09 Feb 2024 19:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707507496
