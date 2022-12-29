Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9BE51FAF
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 18:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90703C433D2
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 18:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672337487;
	bh=MnjaAm0Bd4cP18fvm9ywXd21FcfS3zLDjr/it0kfHtQ=;
	h=To:Subject:From:Date:From;
	b=ebXexhnIWTa7FTJC4kuIlAddlHMm13sAKSqbgpRJMV2Tz1xELKGHpac1+b4igdQLa
	 esmTJm5pk/AJllkx5Q6GUY6ZNZhPu+qHqsOCE20ZD9Ldkmh1YeHqUuMaIo3d57XASv
	 s2g3w97x1b5V9gWXapNgRVP6uGUlkRaejEknviOsC33HnLYb64zygFR7JApN83XLl3
	 dliwCd4N/1NJEnkAK9cr6aMTUVtROZI6Oqfw4oTa3+dfQNkAYohbAZBuPBE6p/je4g
	 AdsGEn82SZcD7HaeZPCJ4mqb+JwjX811QSMSGJ3L7K/gIAy8SWp8tpoZo03Vn/7vCY
	 wvPQPTezWsLUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77A36C4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 18:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167233748747.28664.18242686718408534985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5e4f1ea025c38666d0ed9ffb2afc53e9b4150d9cfb74b2b2da9a03fd43a23d1
Date: Thu, 29 Dec 2022 18:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672337487
