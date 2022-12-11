Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2DE93236
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 20:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AC3EC433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 20:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670791287;
	bh=/eNhEW4YZhmKmwDXLzVh5KNmBhYmDufKRXweT6fW58Y=;
	h=To:Subject:From:Date:From;
	b=ZV56UPAgkLLjxWEFJOL0ajptujlYycOBsq47MWAd1cP2dATzLLHEGXmepD1KY6v2n
	 nPzPthPZ6CplBdLqpLHEUqFjZDd+n76C2XKEjNIodNsazc8+UsPXKcqVhr9WmdXS/2
	 5EesKQ5iImB5qy4eW3AoctKGmw1wkoJRlIQoMBsDjqlxvRwGunFNOKRs4ciF18k1j0
	 GlRC2ssGBVMCrc7R0bEtJ8PqN7/vr712VqiwexqSW7aGK0vL2KRiuMLvkjMf4dbV1Z
	 hfvSxo1x3aycRG1zLYxl4PhOohBPrnaG/rYTHvk76Y2zvRV8sOzW7X41K5Sd+TxG/N
	 sCfzc0I+nfRaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68A3BC4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 20:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167079128740.21359.14335784540141064148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81bc60ddb18ac1ce3848fd2bdd792b9682ed7ef0f160a6526cc117dc9f607cb7
Date: Sun, 11 Dec 2022 20:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670791287
