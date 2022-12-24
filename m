Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E76E517F4
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 14:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84164C433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 14:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671892887;
	bh=NSA6R1+rcRVbAkfZeep1M1M0ieFmVFmKslInLSBMQNA=;
	h=To:Subject:From:Date:From;
	b=glUkA/KqOPU8vcN9G1YM9hB8m9OvHbYUlsR814XTBolH9Fzt9IeTxgO+3cNpvW5a4
	 luFcFG6MdEslU0k6Fa/TIT+hws2c2FFK0nMVWnavwXvOaDyY9XyVSJwlA6jFKdfZaT
	 hXNefJOylK0izExaiLzI8BGb1rELXcV2xdr1ktg8u17E2aXpEjNYmNRZBLOClMXfBz
	 B8ZPFkozRXdZyXbv+XGlNguNfaJaXOoS/C3GASJ9RExpZaNyQfofBhKSHMTuxivhS5
	 fJlGEoeP937N/juQTgrnV5rOFx/GvNzH8wpOP897LgqR08FDzrXhSKe6Yre3LBe9jS
	 k889nPZkFvb0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69DBAC10F1B
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 14:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167189288742.9449.10585597685599296315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6788ffcca00779619b267d5b43df259cb1fb96a4ea659baf203a90161b429d3d
Date: Sat, 24 Dec 2022 14:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671892887
