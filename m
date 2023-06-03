Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A44D920EB
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 19:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBDE9C433EF
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 19:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685821085;
	bh=XgFrMIotEtE7XdVLPE8HuaojHZmyGMgklRZ/2xIrvp4=;
	h=To:Subject:From:Date:From;
	b=kHufs7w/hxzGFdSR+bz12hz8HQHNRscLz/0s9/X1ZSlnOCTf+eSLu6GTtYqF2EApB
	 vki45DM3hvUzTx5BozFfCiTS++tD2eBWRKAwFK8S5ANtVAf2FSRTimKrLv7ebbqda1
	 S9kLrxrKTlQBrBND/YaDk1wSmA/tE2zrN7WjMd/YUmYXFhnRIziCQMb5TwdHZC1ELc
	 rTCzAgGFSYvaBANDtFA2+XVagSoVh/wxz5j287IJLFSoJVu+2tskI7JIm5GhbuEh0O
	 5VW+fXgOSTiiNzyF1lx58Oq6TTxmrvzTkefIQ/NImMJDBBClxuUMl/cAc6W1kyXUqK
	 MZmMCrZ5hPyUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE468C77B73
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 19:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168582108574.23979.6878159277404223862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a28a7f5787f6f38f79fa0e49335a3396b86f0058046e7f1a168d6b85aecea99
Date: Sat, 03 Jun 2023 19:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685821085
