Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284787E2
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 02:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6563C4339B
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 02:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680835685;
	bh=Q8FuAFCntT5u7XA660pPWYRtJdvZhq7ZhlduYf9aDsI=;
	h=To:Subject:From:Date:From;
	b=Op0P++AFFij8FSUSaGqskw9jo7submE3evxoLccTle5TeEodyKrVOo3ZNu7MKgwxn
	 pdu62B/npgp/NhyHMA+BlHLJh18/IkCT5oke+W4MTkyUKqKzpSb1T+vwrXH3655grZ
	 7TNpJqAsGJd9lUBvsXl2tEg7wpnT7Z3hYX75Y+f7DAw/KN6K8xGbOY2mqSNAhXefR2
	 Wt5Q22HgkVz1Upj3sF+QcQTdO6X3mtmtIGQOiZ8WynPMCZhimWQC/h9ypcjXXvS78X
	 7C9qg8IjG9ZqMmeaP9ZrVgzbCVTxKZjaqmaOoojm2yEV40UsIACs8s9bnM3g5KEHcu
	 qxMH8WVK+C2pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBCE9C76196
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 02:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168083568575.16841.9068425299855708388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27715d32d42a5e8395bc98566f627d2c63623aecf8e3af5de1c80103103d3219
Date: Fri, 07 Apr 2023 02:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680835685
