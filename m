Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8AA81F
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 07:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE5EDC433EF
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 07:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683790445;
	bh=JJuvlkBReVyifRAnJGQ2+cNVvb4IrcT4d+PY9GUtJJE=;
	h=To:Subject:From:Date:From;
	b=m9ZQwQh3q0b6ZAGhnUeAf/iGVaJY9aDQE05hOXonAMW4gWIDAZedoF+ra6I8V2UUj
	 ps2etQlF0/OQzfTR3LbK2BQ0OvtJCmc4iUqxPnzYWL1rmXD4iNMtG7N4RKGz45Lb7x
	 RDiV/ECP2+kS4Hm9gYWxPsDSjOf8+C2GRC7vswNQcViVD28a2/bV9x4bmJJS2wqCHs
	 HtKlgaCfUUL12PSge4krOBw+ro2pO4ne1+GtDF2+2eGHUEir+0rQiXYjhPeTEhhFVA
	 EBsBgiTpYZHzyHsXVpSxHol4mir78p62TEMGcbz78dq90JcncVUsv6F3Vf5chGYCEm
	 jfK7OikqkDhHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD513C77B7F
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 07:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168379044576.7783.10165424973105221631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6685cbe5035590785e6ce107eb380e50291d2d1103aed037b06f1b575c635cdc
Date: Thu, 11 May 2023 07:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683790445
