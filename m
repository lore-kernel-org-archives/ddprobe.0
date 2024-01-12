Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16BC46BB46
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 12:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vH0pkvcj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95979C433C7
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 12:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705063096;
	bh=y86aQSpY6shib7bdPdjh/EcFHsG/WTVd4ZpVBeAeb00=;
	h=To:Subject:From:Date:From;
	b=vH0pkvcjYbUNH4vwzMcP9tvGik5TM6yNFR4r/IZtiYDND4gp/LexWEBBHwkhGLyMy
	 Pt+w5gZS9G/tFcrO55gpSLLrY8LTQMMU6Z5qaXFkXypgj6KhgrBKePsUO9bVpHwOec
	 RJMAWGzABwEL8rntaUYvhi95HhQ+mTZz5YeciH9C2Husj/q/hEU7aD9DohwSgMrxbX
	 GG0FoPKXkMgvyYj7AYS1TeHt3YXoXOjA7/++AbU3imxbDIQrBx+q7EQaCGjWyqUXJ8
	 d5LOs8JdH+ln6aW53tud4r21xOpn3apcdFcG+m/ADA9m55aOBhqsU8+DGMZQvfL00W
	 X6w528WTSL5Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 794BFC4706C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 12:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170506309648.24463.6867446403952641111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36a062b30eab66114b7287e3cb26e68860dab8b0f51b37643fcff8fb5a6dd877
Date: Fri, 12 Jan 2024 12:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705063096
