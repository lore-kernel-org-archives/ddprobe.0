Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBE1EAD49
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 20:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E43CC433C1
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 20:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667767854;
	bh=8gg2Klgs7H2Nc3rI4a8mF7lV6yhCirnQl0wc6jWb+30=;
	h=To:Subject:From:Date:From;
	b=OgfeXKhfVdGMKZ5CMRij99by9+VK4Hf6NKG3ie4Jbnjek9r5TQo7c/BuYUdO1URHS
	 fkttQGK6tqUDKPzI77FNVuhbJiapxc5shOJTe8vg+QbF+hRpzjoTau86pwSofDGbsF
	 qNGBiQSdgyQlTpD4ApMy9gcEpNQfSwPJ20k3x+QdIjlx7O30eBZjkTZV/eVr7ctWMI
	 YEq/piVEWv8kkO3O4uJ5UFrptXLjwJAMVDwz0LPU0dyVnfbNLDMfNf9oIxE+DroO11
	 yi+w7egJsTAVza52MROvT5/AD/a5uTXFdCCGOBW8vK8I2V9fJCOgO660wmoXHfJGHt
	 WUR1zcMukHMWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55496C433FE
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 20:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166776785431.492.7046206907271760756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23d232b7e656082994495a3e84288045dfdbb52ac9808463df2bad4eb9c3cee0
Date: Sun, 06 Nov 2022 20:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667767854
