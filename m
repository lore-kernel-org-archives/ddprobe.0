Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A9F515BE
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 02:53:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB17C433C0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 02:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687315989;
	bh=NjFK/Mf65xZKqESdKuqgt46+E4jf7lRxOlMXDFd+W3s=;
	h=To:Subject:From:Date:From;
	b=Nib5q0sAaZLDkqflgsO7O2+v0jszEYGE9szvLcJ3gFe8o8+VtTeblvgaxtsEDlS+p
	 H0mKnGVdoH2mLYudcY+QhFBo8vARU58HIH/dN6AkdZs08IHUXIul7G8FUYkuEfJi1R
	 HCsEyP/6oLNma0H3eyfaJEyYS1W46D/YN0QU+y9EfBKNwKoCAt3GfRuIIYGyH+8KqW
	 VR7p4te8PdsIZtfWRtBfM/I2OOFFpL3XMV7+xLourLd8B5cnoP9m2lsqTnK368xmIm
	 n4kaUJxKMNEp72DWBEQyHarChGR3dEmkagR4Ew9vWcoqtTImbdi2DiqR9HuvRfpwJ+
	 GpWYnXJ7DuupQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B25A7EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 02:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168731598871.12459.13685291383768968947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5fd545d578b7aaf236e2d53563c7ff11c602aed251d48a68d387dbc40c9e697
Date: Wed, 21 Jun 2023 02:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687315988
