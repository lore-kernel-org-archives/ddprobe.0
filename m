Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFABF7E
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 07:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F162C433D7
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 07:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664089253;
	bh=/GxN5iSR2G7FeAjBbv4rb3mN83JTDhOVws7e9U4w9TA=;
	h=To:Subject:From:Date:From;
	b=knYOosD3wCywk3XVugCo83n5WJkcfN00ZxK+C/3po6cl1QBz6GB+RgyuVYvh/OB3b
	 Rl6FZeaGQ3nCSM89kwOqJ1186SEw1S04ugF//4vqm/nPO0lqOsedSndImQ9a/dzsNf
	 NZuuG+oGhNoOiWx/xeoe8/S1Tq5jhiJl+CN0fU8wG1cnTfakllZZD+PN5/5Q6Azcs8
	 LBC4EY6gY5oiMQjKXG9t2GhqGI/zKuEzS1TfB17yxcC/RdbP6CbOWahBjeMZytieKx
	 OIV7KjgU3f3euZsLuBbZbZQFXHqEX82D16MY2b0Rc9Rswzagq06PDatysJBalaSSRA
	 TKHIzxefVa9iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 557F7C04A95
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 07:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166408925334.11337.9383513117759705620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1228ddef65d75923ea45aac789d3becd28ca5b0e6eb73573c0bbdd6feab32f9a
Date: Sun, 25 Sep 2022 07:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664089253
