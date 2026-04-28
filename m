Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C36C86341
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 06:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777358854; cv=none; b=Jh/XWRENp4PFgkoDfplf1chWMZglpCgGBR4LEYFvXO9ZCl1oQC1YTw0Q6XEkc+c9vl8euqL/nAIci3r2LnUnhUMW3he4RQcY4DVO5gkvXlxM3f8zvL0TRAQgL5aCmshSuANBbF2QshvwZNz1U4GN6I37xPmG6q061JRqybgPgtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777358854; c=relaxed/simple;
	bh=ljQWW5I16UTeW/+6DY/zklvG+WhIgu30x3QRyttN/fQ=;
	h=To:Subject:From:Message-Id:Date; b=A85lYe7AYqDFrKbD3h4jT/LWwGXlqLTyjYHhKeTZeKjlBjvD2YD63XtBj0BdaSA1pGr135gXgscKiIbBihv+S5PpOqVb5YsY27FLbf/dNsqG9Xwz4wkQP3rwHWc4y8FMsJJlCPeugJenYlhdWy241B5tZyf8myC7ohwVC5amjFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pSTdXfhe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pSTdXfhe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6A48C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 06:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777358853;
	bh=ljQWW5I16UTeW/+6DY/zklvG+WhIgu30x3QRyttN/fQ=;
	h=To:Subject:From:Date:From;
	b=pSTdXfheW4nC9XmQZiUfgno6WVPBF3ExkxTNUmx2Y7UV8+0p6uIs3iLD8gQVyH1QU
	 sHq8Fq4QXrC/YVAXqvYWZYzMvj09QOEbzNQGMDAkcr8AJgUh69BrwHBWrIHjHWum8y
	 J/lBCXFEQLbok/xZQfpDdLNUp4EEg+cDle5YJ5FnZTEwNicyio1iJRLAFGc1Ds1sTk
	 INu2Wn4VdNs5IKU6jOB8XGTz4WkPcM4UTF6PCMEBgv/vxSlXQnU67lCEkehfDdfjEf
	 oLywtidBhNp7oeMbOe10zn3YtjYAUSIUuA/GryhU+xcGEWDBNpFNsE+Caux0yFag4u
	 7X1RB6co6GTWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C3AFF886F
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 06:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177735885368.31648.4914555008962381033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 367e83b4de913af8d928f79f833355236349dae20bbab4ab05cde495325d7e3b
Date: Tue, 28 Apr 2026 06:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777358853
