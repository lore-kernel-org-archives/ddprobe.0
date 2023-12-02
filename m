Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FB7154AC
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TdT5UKcx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 873CAC433C7
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701512896;
	bh=P+p37zZpmoAZNQoA0mF926sV8blahlvyE5thSJkzkJ8=;
	h=To:Subject:From:Date:From;
	b=TdT5UKcx6paXbZhin3innPLkv6bkZlCEgoneJZr49RvINLMODSmWRlZ7PSREvBUjs
	 Kh5NAZ0JStNVsjlIa/mihScR5ZQ0lbKoan0GbHH5kmAw0FLF7AYv4AZ/vlTvF6JAR4
	 JxqMP6geeqXmUpEmtsPMv9x/0ZGlQDZPCBnMOao9XRU8dB6CtyTyc0eG6h2TOEuVwo
	 cDavvuPxFARDAN8BfUbpaZMSnoRo4dQ9/P+YQ9a3ON1pocwhBMBphtP2eGZPdpePb3
	 R9SiKHcAnooH8MRrooTeqhLQ5FYuh9xxjVVX/vNO+5JdwQuFJthigRJsQVYQmEmtSr
	 Z3HD30k8wAZ6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64875C4167B
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 10:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170151289636.3404.1767467298724664544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8eb5693bf6a0cfd725940fd9e13c99f4f7a03fe6964678952aa4466ff0083b8e
Date: Sat, 02 Dec 2023 10:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701512896
