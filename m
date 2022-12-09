Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4FE1802
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 06:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79068C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 06:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670566287;
	bh=fmaluSQPGmQh7+h+m08+R//n95wru2M/M4ZUcleaq3Y=;
	h=To:Subject:From:Date:From;
	b=uVgTVBiPQ2DdtNycay4e5hlqUUUBtgPfer/ulKlLriaplp2LYHr/g3epla1DQiwiL
	 dD4CXV3GqwzK6SCqXWEeI/ADb0DeuC+s+k3AIK4uxUiugUwKA/ChoXr9UDYzs6gjN7
	 h2YOBHFkGhdcGtgX6Pa/cCps2KK4sNOibaFrVdnICuY6F+K9NagUfYIdcFh0JKtKt2
	 72ZyA6GZ4LYghkFczAoGh/qKsc38UvWHo7KtLD360Fiozwf+rbQzQcDwxAp3kUNrWg
	 1u4ITKEonJNinPgMggdQ+/fQanYrc945nQAQrBeCn1ztwHa9BCcpn0kof0vGzk66gL
	 jwjFzZJOlFvaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E0CCC4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 06:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167056628737.14006.17393787071798664672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d8888c88b8f959b358e5a238a30b3476b97351af84f5b90fb249221785b54dd
Date: Fri, 09 Dec 2022 06:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670566287
