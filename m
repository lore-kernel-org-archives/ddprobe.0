Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE28423A2
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 07:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6905EC433C1
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665474053;
	bh=ktfqO/l25i744+riPr4pUPg6u8xp/C/NuE+dLqLDiz8=;
	h=To:Subject:From:Date:From;
	b=IR7lvglhy63uy7k0O1Xi9D3C3B559MpJCQqZNuZScqeA3XdPhUpEWspRIg/EdX30s
	 YqNeYZsQTh55MZPfK1sam6yik7y/Zahmww6lcblgQziZeqGRjCEnnQqlhJVRmNQ79c
	 UWhh+HFbppjoKS41K6RLF5zIEpoN/k91Y0tfHBiWT5VnZJgL2+/v4p4Lk9cTDADC0c
	 22wS6EaCtsXtsHPbhqbEtRxq6Gq496eB8T+dXa8THiHBAWyeP5xo0m1Oh4ZYxrj+DZ
	 Xkew1IdCKhnSIA79JwB4VlKWIud2wNmdgq6Zyto2/9g6oIzL3Fv2HxAudmPTXaR2NA
	 gqS2j1FcUUiGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5151BC433F5
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 07:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166547405332.30096.15280203539020158752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c897bd221a02b6d982fea9955dd7e8dd73e56f65a17ecf8dc747df755d503a27
Date: Tue, 11 Oct 2022 07:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665474053
