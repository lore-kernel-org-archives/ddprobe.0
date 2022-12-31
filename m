Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA73723B0
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 07:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96B3EC433D2
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 07:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672472487;
	bh=BBYb2586BVGArMMNXtP+uRmQDeYklLnpsbYIn4ocRcQ=;
	h=To:Subject:From:Date:From;
	b=exxTxp1iCtZyvsJWdO7bcgaFnNlADUrhU87HP/BjT2tN6LuDzUN0kv0CRMTqKofy5
	 iaUnUgAM3tE1cwtvxbnBOS5pckupCn0IZPO0zbPANyhftniz4sqlAyahLKmt19g33C
	 ZNX/fNESVhZ4X1WoTeBNCLByuHiRRzr41kX8Fm46WCpCnN36T5yRITwq5aKucS5NFx
	 XHwclIuvUOvxgtYUfxc4YG6EMaX3cX2ru6/TlpfzKC+Xy+EaoE8Q6xZVrc5/9gRHws
	 OpLpHe/nci0O+NTvQBoFUlUxumQl+qpun2w0TiGekA80aNKK/tYbzwRPndClEmsWz6
	 GF3ykcEesOduQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73B1DC4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 07:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167247248746.32593.5049168271066651397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bba4c59ed7c5839df5db43dfb27a53d8aa6365a26b76b665901deaf41bd239b3
Date: Sat, 31 Dec 2022 07:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672472487
