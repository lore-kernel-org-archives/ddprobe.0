Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4B9E23B7
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 13:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77075C433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 13:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671544287;
	bh=Iq64/NBk4rm4PQYOuMrpz3MGbZ+gjTXxyUXmANft77s=;
	h=To:Subject:From:Date:From;
	b=auvbRx7g1ziwUOuL822pLX1GmNbFnLrQstD9GS28c9vAdAvp+pYJQ5sVIPW4Xvvzu
	 2frPbAwc87uobJrCbRHNnsqyQHnIdJrXzshyBfp8muMPlbksMyKAt7jzhZYdbD90tB
	 5QcYW7OY57bdSBfYfK8Dm4a6lgPPjBcNN4VIuEvDi+o/0Td8lPEnK3HPUEPsTnj7Am
	 SI+qlPiCC9YN9iWTtSOjNliUgM38Kqxo4LJK+1wvLzLY/PhZBJ2AILx8qP6xA0oLN5
	 2FXMJNcZDtMpkOARj+RGM0KCx5UlbnytW2AT05B8AY4u6WDVEf3Fld500mmwkJkcL4
	 xogQVz2ST00Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D648C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 13:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167154428737.27634.17758218640835947836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4d57252268cf56c1b715f28c76b13313a1e8a893b2a3e092d7214d4f6eec32a
Date: Tue, 20 Dec 2022 13:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671544287
