Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF3D117E8
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 03:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7238AC433C1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 03:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668741654;
	bh=LvtTIJ+5B0K//rSoXS9rl5TuH6+J+Zj26NszJzw81Hk=;
	h=To:Subject:From:Date:From;
	b=Jg5pBAuMWc02RUHmLpaOnlucw2glBrpCKIADMzNZ5cP6D22GlQJspWYzzr5TAd7Tk
	 8NRU8TGsNNyQQcb0QEsvtA/g57w+hbohurFljzlM7ASUWIwCkqLnrLLkGMyIWW0zRo
	 w/z9zwskbXHB9bs89/KLQI/9oKvqX/evyRtUdQmTXhPBGXEr7hzlBjmFdscnaEGD7t
	 oqM4aUzMHORQD3+5Twu19uyiRklegVql0NLjRu+C+5JFzofRCHKaVGPFoBfGa1VLOU
	 zpfMzNMFaEYvy36fDe4tO0mHohxQDjQ3Rb5VuWJWLJ1BSfEEXyU05zV+kmOjfT51eR
	 FJANikvDjx9Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 578E9C433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 03:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166874165435.17329.12707632814988214274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9458841e071410b1a1e5a54c473a6d37842db5091119ba01a938666d3ab9b6f1
Date: Fri, 18 Nov 2022 03:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668741654
