Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 043DF199BD
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 19:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sV5QMdJp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AD85C433C7
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 19:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705348096;
	bh=F3GhFqYT1ps6ZbiwxH80CNGP43GJwd6ALxDwWWcEwJM=;
	h=To:Subject:From:Date:From;
	b=sV5QMdJp0jMfDc74CHEePUB1Ohd52eUi29hVwKC8R2Ji4EX+ruqCgMUo8KhV39oOZ
	 lTcLu42HdDAGmzjYhuuWhbX+yk1y8n7eXgKCA0eeYZg2cUz6LZsiolqnLfKZVQJ5nJ
	 NDjeYYvRfX543Hq8tb5onn2iYI7zWBd3zPe1aWwNTOaZOkud6oSeLFsTW1G4mgpfLC
	 Df13qgnj65b0Yms1jff/4+NWvWv6WHTK4gOXQbNUbEphw96bP3Qx8w+11IhybFDOMu
	 weWptL0xqwtTIC1wKjoh50qk1u7+tgfIXP28teljMUWUDq2kWyMUPD5q5hb1v3ZDoH
	 iS4gsDx9lUkHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60C47C3DA79
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 19:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170534809637.902.16417078653691133481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83d748921c6650b615c91f69a7641196a6d5ee55138e905950734f848b4487c3
Date: Mon, 15 Jan 2024 19:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705348096
