Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D10457B
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 08:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8450DC433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 08:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671870087;
	bh=Nl5F2eZmWlutVlEiOHnNgRjuXxwBlKO/lpWCu1PMrwA=;
	h=To:Subject:From:Date:From;
	b=G3jFhOtbDzh1rq5MvXf7CzytgFG8CEwpYtK+O3i9ygIzKj4UnoVs3Eh6JjfuXBNV0
	 ZsQNOm/7z+pUNY9EhCLnbKPCzK85EEUonMGij28ig4V99XfafwdXVErwU7RAUtEvio
	 l5g9b/BCBrerW+TID7xtrF6WuJOzo3WdFj4YAfXVyWSZPsJyLjVrS1eP1V1J5Otuae
	 e/KuyeonDXgSQBXFavdFYnwLNwFKl64Pe1uAuWl4IAOJhhhI3MkSA0I4XfWiRGSEPt
	 dy7GlKaC1408KYKaYQ9iMJw8bqJbd+eWsVe0wUHo7GxroJGnGyr/k4BNvORHGmvM1g
	 GLPWT1T7lbnlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63B2DC4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 08:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167187008740.12696.7540569478883708777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5c3fd207281adec1e7a8ef44cfc00506e98ae204bf2670c4efedfb7b2261783
Date: Sat, 24 Dec 2022 08:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671870087
