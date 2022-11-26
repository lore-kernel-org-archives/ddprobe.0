Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D58A77E
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 20:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F293C433C1
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 20:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669495854;
	bh=pdzChUM4DSrXpjyNN8HDoWKJ17HYkoitqFBkLuWp0I4=;
	h=To:Subject:From:Date:From;
	b=Of+zHsbLt3+mdGWhS9pVU6LlxMwy7l9EhJZ4SmpKqSbo7D4MNe7GmJBSOyWTg2TP4
	 TANipoJm8Eyh4uFltSEgA6cvRDTadbF0pjrOzcSyLtv7Wj+1lDrRcjoeJCR6Lnqrel
	 7D7MjspgJYHjfqEI/G/2kMf3E+dO5OooTNgh7htVhC68UVxMycosmvmHR+NHf0XDs4
	 oaTG9EbAthPbWt1e4nsb4xrPw6Nlp8utCkQqXJs5uWvV7P6SVVSq9KEl1/b4JYMfs9
	 3q4YgOQZoVYzF91QdvOUhb0dR4GCI33BsGKumVcWUA/I1h8MPg9GKLc9M6EOK8hulP
	 7Bcy3+uQYdL6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E1A5C43217
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 20:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166949585435.8456.12469526375748289771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d41e104fe1bc252b48c703db808a67c9039becf4712f735c6ed0938ed57beb7c
Date: Sat, 26 Nov 2022 20:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669495854
