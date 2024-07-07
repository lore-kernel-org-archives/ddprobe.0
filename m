Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D1518E28
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 16:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720368983; cv=none; b=QUAs0rrmlcAAzd/eCrRRARmlx3oZOeJa18Wab2OLyMvMXI3gLuM9Xd/vRDz9muSlVAkN4OQ8PJnf13vyQ9g/8wRlOZ+2c9k6aNDkpFW7SPcCbpjok00Xoyj8Rar36HXtr8P2+q5EDOcJtY5gHFLm3JSS9Q8AMwD6GePO8fX045I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720368983; c=relaxed/simple;
	bh=Bs43R40aH6qnJ2Iql5Jwff4zcgfoAFcFVjP8L2Q5Mbo=;
	h=To:Subject:From:Message-Id:Date; b=WiUvVqj3EqxtWL5iJhJYkMnHyqRBsynrrgB3giHBvuQ7pE0pIH3Ei505DhbARXjfu5gFjU+FtTIghEnJprIURiiA+bTc5/BxPNR8nbBMPUVEtFv+MRAKzfE34tUE8DqWjm6n/WS4YXMUuGE50IYsnoDUg0kOZxFNXBfHoijcJ2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ssmjAH/f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ssmjAH/f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8FE6C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 16:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720368982;
	bh=Bs43R40aH6qnJ2Iql5Jwff4zcgfoAFcFVjP8L2Q5Mbo=;
	h=To:Subject:From:Date:From;
	b=ssmjAH/fHXWTeniUcTIRFyJDPgkgNjRNn7YSdqhK0OdWJ9Y7XsKbxFebR+qgZ1wSV
	 K45/cMy9QiWsfxax9skwDZ3k+nIA7fmKxa9JxYTckxL2P+hmBiQ7FSt44l4Tlcumky
	 fObvkqJYNRsxHgOI4JWSzYMu9By5Bpt1o9viD9XsvDV1zmhfQxp58M/QlqbqDOZTDX
	 RUgfXStr4eljX9b6qPS/sUy4DQPUaIa5qBZylikjLwN79yN/uThsH9PiuRkGIDzAGV
	 xnfnNiq+c38wRcVtKgnUTr5B4qejBC/shObNcrkQceKndI/rsxgooJSa4x/g7i6drf
	 H1abYhia+vdTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C07D1C30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 16:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172036898276.14509.13255158539134430274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e281263455c7ba4bec18a6e705421d4910533f1b00ea7bd8d40815e204f9b690
Date: Sun, 07 Jul 2024 16:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720368982
