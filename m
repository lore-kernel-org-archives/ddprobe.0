Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367E328E3
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 18:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E415DC433EF
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 18:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682102945;
	bh=bYBE1tJ5pPvaau0AsVXoz3KbJ3f0B9vkASQfsCeFe3w=;
	h=To:Subject:From:Date:From;
	b=FE5Fryy8pXm/Ili2Pv3zeLTltyMa8KrPCPnSxzyyEQhJRyDpxPdBKw6Dnz6HP9lqy
	 4V7leI6o5siZ4yFgThVg9LIJV3bAdprmdrLKUaMrFBOASbJpSAXMr3837c5wvi87xA
	 AQqItpyWehd2qgAc0JbiJ9zlvpJryoZ2dZAru5WvVXB5BdqksW1fp0URykIFNw5yRK
	 y+d3I1W8EoLzF/ty+f+YWKsvnlLd6sdF0i9e3VdR2lWlcgZ0U4phqFI81KBjEFHVBm
	 MM23Pj76/OlqREi49CU6Q9Tt6mmHNs+a9k3QIAU90zr3Nza18J8ZkKBgu/+JXqblAm
	 PA+G2O+0ULF1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3CADC77B76
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 18:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168210294579.18573.5364887974672041922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84b8128dacdb67a429b0d3a8d54a7b0dfa97ddba6a3e1b263da3d437fb3e67a7
Date: Fri, 21 Apr 2023 18:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682102945
