Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1EFF4E2
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744258194; cv=none; b=FK/EMEX1KVl3OhyvNzODnZZd7OhoLqnG95HZgl6lRodMOeFBqL9znFcEddApgR5jxaW7SeaA2Gr1uAIac1bp4VRiJTN/7lHAL7BPMstHiWd+9E5oaIPR3y/Zm0Vskv1lTRp5tTwVEqkJRsmeF9SQEDh4iHOqHRMnETLkR/CWdz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744258194; c=relaxed/simple;
	bh=J+c/FR+muh4JtHFQUi4THd+tqC0U7w3EUNB2uMI5aEY=;
	h=To:Subject:From:Message-Id:Date; b=nQjJ/vQGWyPOuGqTJSYDdAAtL1nB82xrFkQut9RFuA1CPs8V8u480wcq7oX3IU0h2y0ZbQC6vhytQ6rO1SXRNO/6cTo9f/5K7tmWyBQ6hKZp2qXdr8BbO2AOOSYB6NfkFjFH6Q2JZBMDAhzWNxzVSIC6UFmTD5cY4yvj1PG+0mE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uTfonVQL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uTfonVQL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5193C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744258193;
	bh=J+c/FR+muh4JtHFQUi4THd+tqC0U7w3EUNB2uMI5aEY=;
	h=To:Subject:From:Date:From;
	b=uTfonVQLeQ0sBCPPniLSO5FrKUvemmNZa9jP3FjScMk9V4MVWFqwl3rbVfWMskikc
	 A/6XLTurRdRRdckT41TJHXYANppRgs7qwjOXBbgPO00hH105/EnkhcENe8nEPGMW98
	 /U8ucbShwxejgZz+KYb0wlyRqvqO2TNQSAOBRuHFkactoF3ICX1w8eUhwlMr7G1ZuW
	 JOVB47bU6hzfGpWdndouvAvfRUvZCW4cL6XIeos+1eiB3nYX1AwRQ1VE1Orm6NCiTx
	 +jHhrAWqxKB/xAzvf6u/ibHDRbywSj4p4S5tyYKqnHQEQWBuf8zG+A1jWF6cbo/Ttb
	 m7YkUnGFZ//tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD474C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174425819369.5517.13533186845317438988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 353d953bacbef843c34c99f792d5c500c81ac71b9d912e70d54eeebd7fa29a70
Date: Thu, 10 Apr 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744258193
