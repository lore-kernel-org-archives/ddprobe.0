Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD2E57B
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 03:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B82AC433C1
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 03:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666235453;
	bh=V69cTQl76a+HPTynYuV59A3JSD5V6q920nxZYYoRMAM=;
	h=To:Subject:From:Date:From;
	b=NwxuTbxjL9Q0QyVKn1lTKgeOvDDpqOQrM4Q6obHL5GsEMq7CfkMm0Mi0y0yMViuMh
	 +A3ORHwDFpEL3Q4RhNYZMxekQ5ueR+iMozHld/XBMN9a/2p1J+j6n9jGsKzSonA5Io
	 /2z5bOW5/FDmbglc/fe0VrJAjMYjwFgJJMj6Y1A6vlASFkVIBdEmYXouTSiXu1dSLb
	 y+UyOxwf/GCZI4sYsKfyv9UbPk6/GqAjJK4RyKJQ2XDtD6nmBdN/fROiieM/oK1NbF
	 7HxRTVdvfk3JRFK8i0rAwaiJJnWta0MzmXqH9f2HcBRxlRQYKiCSH9dGLZ09Ry8gTL
	 hJhiA9hh6JX5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51AD0C433FE
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 03:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166623545332.21961.2687517693336527053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98b1e40f3be4478c4850b1e548cff7101454f22240ec91d0a0f29a1c147456cd
Date: Thu, 20 Oct 2022 03:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666235453
