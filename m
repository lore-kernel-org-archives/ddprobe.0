Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D8A41F952
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 23:56:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E157DC433C7
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 23:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696290968;
	bh=XB4OpStLCbe/uHL/q/LKx7ToCHUBFuNTV5XOLFOqy/k=;
	h=To:Subject:From:Date:From;
	b=S19cEhpfsptb82fvZXD4HAtNOEbbx7Gj69LxofvYgmoHAM9SbJfQAAIqU0n9yNUyW
	 MnDKSBfgTU76CxglNrUrYQ09dwZChCUIkAfUq5kS2nqg15H/J4HNUBUOSXbA+uTeUi
	 k9i5TYAGmtyq6i70Ao4mdYScZkgc7i4fuAb5ZJ2fSI9m5L5zEo3npuXwhOMp7jH6jO
	 pI2pUM4F3Z0STQ4QZfM3LWEJ6ptPx6+rjIBR/5NB/vleZgSLy5PHCQ13orAaPAlsor
	 8n8K0Ha+xnICHqjHpw1GhPwl8AL6u0YaYbP4PL39iAw6C1atbMn6vh+z7DEjsqbzaA
	 N/bqAn7L4qW8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B56E6E776CB
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 23:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169629096872.9752.5099501829254560713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b99e5017ee203a2e71bf3c4c8a34e918e5b6467cdab67d99c55eaf24964860f
Date: Mon, 02 Oct 2023 23:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696290968
