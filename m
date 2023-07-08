Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 834D010E7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 04:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F175BC433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 04:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688791029;
	bh=QmHlCmpzWC0P/FvpA/h3euiJjSJR1wSFx57SCT1Cu/U=;
	h=To:Subject:From:Date:From;
	b=c16dk6Ac9cBHSKpN51q+8CK16X7LcpNqX3FD17ayVa/JSgZ+SH7oNAJ9cN/9NNrYV
	 fVnif0sfYGfoOlSYepHzHx6a8UrcbaTb3fXhApz3hreQzEPHRJBrfGc2f8A1vVu5i7
	 8SWQMmMPBBi6An+axRXeXywDvPXk032PEuT1vFu1o/92ZlYPKowovWaQCJ1sQ2XRf7
	 BcuE5vQFDJQCTPNYkKtYJJXvUfivvC9Q/i81195EYujqNt5LC9JsQX0bVODR9k1QHx
	 bKTBFRDH81sKNDtwO+3XQc7pdYBLlOcopOMEJQva3oDrHYIeK7/iTvyX3LZwQIhk2M
	 f0cIqIqzdzbUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0E4CEB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 04:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168879102877.23137.13451869716910915984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8978d795820017adfb20f0d60e5cca03277d22f53bdf98315a6b964c0e055037
Date: Sat, 08 Jul 2023 04:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688791028
