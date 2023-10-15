Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D646EDB
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 12:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EFW5BQQE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5C9BC433C7
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 12:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697373428;
	bh=VJ16KrEZv/7Iwi+viYm/UzSFNZ4IjCfK7jzr992yPr0=;
	h=To:Subject:From:Date:From;
	b=EFW5BQQEiZRdZ7EwrkYz0EHioONv9gDKkaa6yIt6bMFCgjWqhQfcGSDDX5Ik0S9H6
	 FQr9pHuKRVrHl6Pj2sPWvQrFfK/wCn8O60jXusBvT/DP0vU3OHhk8+w6neaP+sxBg9
	 cRbg11ZK9zPh+f1InqkJHGu1QITfW06cnsHUSPFLmcaTYxwm62W6UNiOS585xW90O6
	 zCcWqaB9ezyTtN5219lXQl2ZE2ZxR631s8DbR7uN8vvoUPYPm45xEliREnKpHH08vK
	 LupDvE3gojGa56mMEX5vvE9Ec5n+keeAb4Oeqic1212ihiZEUruQA6zyQOFlcjLHHv
	 b4ST0bSOzlwOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99F2CDB47E
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 12:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169737342868.6112.3800665123880273647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61e74f06f193a5705e66c7388a17890736750d370ec26ff0a1114be9384b8185
Date: Sun, 15 Oct 2023 12:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697373428
