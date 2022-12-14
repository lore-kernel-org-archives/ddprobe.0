Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFA9428EA
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 14:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 809F5C433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 14:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671028287;
	bh=LZix5/L1hqr0M6s7qlN/klsyVjMtM5jLP9POiQg6Vfg=;
	h=To:Subject:From:Date:From;
	b=vRp37BH0VLhHuv6DAVGIQwfpDdyrp7FP6c5UdJXY4q1TKQtq8k10QA68Xhc1FXJ3v
	 6ImU4JW84aF4Rlnh78Oy00QwqE7JhTVIFLTNxqSCi9or+GnIPLc1+K0jVLzGhVMtjj
	 9Caso+RI0/dkzQ23066limtL9KxkgwNXS820Vz/GsRIxlpSoP3okK9I3Q+II/utDHJ
	 wdRRuCVOcONNwI7ITbd1BOfYZd0Zl6Fcc9q1fZPv8oFMuMz8t0SHs3nltXA4Qz8e9i
	 2u8t0EyroDKxw8IuqsWx69LNJHJ89rxpjftl4Lmk/lgnnxz6Y01PAJAzuca/ari54V
	 +MxPe7ySVPVbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EDC5C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 14:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167102828738.26591.11307164295219564292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20975ef85fa3818ac09d0a5871c11a5c16df95c020d04385aee53888a35ab734
Date: Wed, 14 Dec 2022 14:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671028287
