Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D48DE2F2A
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 20:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AE5DC433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 20:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670445654;
	bh=kpGfmnYolrmj7RAnKCjH3y2b3+9eF2irMx7ABEf4ITk=;
	h=To:Subject:From:Date:From;
	b=Lq+dT9wrqO8XDQZCFyI6ln/Ttx1U0Gm18KSknRch2RQEdYFojTgv2HGEzT5t5cH9L
	 9VM7FraSKEJWtRLkyM53jAE9O5kljv75m0+5NIcATP8zf/eQLzKB68m4F8JiOt4o09
	 igkKihsxIFpAXo1xyBepCHZQy1GwrDtGQlAjAeYeZghNhzGYNdkrFpbriOmyN9HMCn
	 JbwqVKYPrvSyUy1FZMNO1wnQPIOS3qInDXGelRymQrVaLv9aG55bGnfmycfvzoHGcL
	 gbNDHzxGtjIQRojFlj4iwWIOobgsylQ2WIkPeKwCUketmEEw+jzvJhKiDjg6Q+y47m
	 uM1dGoL65T3eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A0F2C63705
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 20:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167044565435.29477.14521088691029337911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f9fa471ef665a11368f36dc694523c18dc07c0124982d8e78687be0f8ab8ab6
Date: Wed, 07 Dec 2022 20:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670445654
