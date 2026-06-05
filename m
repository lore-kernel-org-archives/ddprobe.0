Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447D45B21A
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 23:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780703074; cv=none; b=J8BPhT9pJ1vkSo48WqfLiUI5MqjRhCsurYxWinjOUdMzi4YzAc9QLqpHhWTaOVxCrNQjSSNgSZLcHqP/OKVCs/wL3CqTj+a9k/YTaI7RfMVwFKddK1cnmDfMWGk62OoNRVWmbsCay94QZDzm9GBKlvaBOU2a82eB7EYnsYAbqeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780703074; c=relaxed/simple;
	bh=oV0M6UstzSi+uRlZorRZS6FxgR/Vn4bxkYsZ9wIar+8=;
	h=To:Subject:From:Message-Id:Date; b=FhFOAWPI2EXWLRavv9ZQKpqsv3I2M7LcuTQyPrg9/r5zG8EXjqtAKek1JZNVVYioL8CkXZ4Cq8MRU0na3aNuLsoV57DzPLwzC4sW+3ipTpd1clZM6Tl/Si3WC5pz7mGv/XdCb0L0gWNjgiRGEK7htLnaKCf9GbVb1z84rMMn4/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A4URi8VE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A4URi8VE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC6EEC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 23:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780703073;
	bh=oV0M6UstzSi+uRlZorRZS6FxgR/Vn4bxkYsZ9wIar+8=;
	h=To:Subject:From:Date:From;
	b=A4URi8VEMCoHxihc6Kpjk5cBQWISaBlOl59Hkr78uVbFtfRm3zaLap4wICeI3WHkN
	 4iqrP9X73CF36SoJ1ngZb89AoMUupxGf4kC0EzqutSf1AfGcK9lqCipERlBd1uvCpP
	 /FQCudfugEsKaKcG/qy3YetbWirKxBswGJEDpCu384NB00EtzgJodjxizHpbo2xWLj
	 dai0/zcQfwocHyJjIjqTgnSEufjU4CCA+09+tXu40yonylgbPwSG+ZlRXqlQNNKkn6
	 GxWVfWoMy+YLiKYG2H6rX33puc8Va3XYTC8dx+l1VEXYLVMj2pjA2pJzUEI3Aaeyfe
	 FvsV6G+O7m5kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1B0CD6E7B
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 23:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178070307369.21536.8307175761879202545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c301adf9f638eb82dbfed138b48ba7793d76a894f208d00175995d89038eb2f9
Date: Fri, 05 Jun 2026 23:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780703073
