Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC58D23A8
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 14:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E120C433D2
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 14:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673878287;
	bh=4t5EMP0JDV4yKveopdfld6ty6es6yCfR0ZopgRSFEl4=;
	h=To:Subject:From:Date:From;
	b=P2zojWjCVNCO88t2HDqdxEt/o8spHRtIHrfJOl6DiLSJeTziaWFqkKrneZSf2AX3L
	 Y4dpvsvfPfZE1Lt/5UWvyQGzm1wcNUkyUfUonQf8+46vJl23Dui2hnwDS6VIT+Sqtf
	 +OXDZ5BMzHf7afLlEXredk0mv0KrB/DgzUVo8p7Sd+/aijhiBf27shV7n3WpHmW3Og
	 YxuWLxB2oCTVpey7c3MRvZFaRV54DXdDGZjMRxa1hZ1ZvcsHJRU270j5hAgUd/K3ZD
	 4Oz9awDqrHxnBJxqlrzqZWZxj1hFEmqRsecPsPpbOVdUWWsfG72F7TKNJRDeFXMUDZ
	 W8QrtXJULBU3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64CA3C46467
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 14:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167387828740.31733.4650651007317119711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9747f9e5fa13a916b18dde959e88c5860a3ca5ae35781f99d786d8764f23a5cd
Date: Mon, 16 Jan 2023 14:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673878287
