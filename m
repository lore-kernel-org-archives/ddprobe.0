Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E6995C96
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 22:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MEMfByuQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2BA0C433C7
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 22:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696546628;
	bh=+sf+eol0bAv1JyjOyskIcDWS0gEQaWDpW/0sIKQphnQ=;
	h=To:Subject:From:Date:From;
	b=MEMfByuQXASXsjFnpN5VwY7RmFEeiwMMOELOcYasa4QxJrLuJr0x5LafjJUW3aC98
	 Oh+jsAmiXo+wiMc0tlQYlNAZ96QQHpPpfAmykJ7dqbJGj9kudh6DphnS+EP1ikAYbQ
	 vmuhG6IfNOZlnta0brZgLCQcJD3YBpZWm9FIrtrR3fcn0FwVniK2qhsvW5dm39aJyq
	 yeo6QnXi0YUfpHo7S9fb8ucBBKvvROU+H5TCYTWQv6U0OPHBvgqtblYfbI/WtV7q5V
	 Q1t22NHIS4y7zOwirF70F7yC1eZudfYIgt+yt9/AM0HAaC+L5rZ5rvEQQJbRQ/ZoFy
	 LUY7oOvalc8Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA2A5E92FC9
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 22:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169654662874.3028.6141683583478540360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bedb159300699b86b8c4e0f0c85139253ac9376531ad4d7967c2775baab7af8f
Date: Thu, 05 Oct 2023 22:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696546628
