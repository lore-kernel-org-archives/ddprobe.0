Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2565B80F
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 07:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6BF7C433D2
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 07:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676013785;
	bh=JCdmCfJlZe31TUBY12o9ygWqP/Ny0AXnUQCP5G3U4vU=;
	h=To:Subject:From:Date:From;
	b=AKQvjv+nBOPcpDCh40XA8ETJ537GdUFUIrpE49NhTBzlfLmVAh559wE963RxbWV/u
	 2zzhAC6CoZN7Un1LZ5IVXeyjJ4dSzIEC3XQ+PywGet6tF90umZac2laJKgYV1WrGMX
	 iorPcsAUCJnwxQhNw1lgT5nNtZmkwTB4kemyQ2NAU5u3Dyq2A/H8fdTd+cogxnz2y3
	 gr1FCzyfCk8d643zvIBj9FBbKMFONOg4KGbg5wy7Gx7NjMCjsEjc0hZW6NxM0nb2+F
	 3iUr9RhmB8CJH97zbukaq9LMBr2mgjEE+l4YX0E/fBJvceqsYSt1kCwJQTxRY5L1WZ
	 kfCJs2IaQ7Eow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCBE5C05027
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 07:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167601378576.8351.12406510416942771759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1e0b11763641e2f8d56755af4bd126b7ba124f3e52f4a19397919dcf45c1e2d
Date: Fri, 10 Feb 2023 07:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676013785
