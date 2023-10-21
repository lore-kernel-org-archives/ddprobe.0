Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3308FEC7
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 05:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vLpCPvuW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98407C433C7
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 05:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697866096;
	bh=WSQECUpKVx3JuYaN63B6ZmalnlYolp5IXuAY4ntgOG4=;
	h=To:Subject:From:Date:From;
	b=vLpCPvuW1C6zlClCiGjkQECUfJNNgOyN2Pxk/3eVfGRdQ2C5EghiMMQmVF6AI0oSh
	 SHf+GX3NngLITGeD8vOzUyY4bLe175xLC+uufUY8GQ/KWFTryJ0TB4woaRtv3MVSgp
	 0RkAeU8ZXKztx9lDEoYkz8Y7NrzUqqXWDYZkbajo7Sh4D/9cCLVBZ9AhHxSx3whnhB
	 +SR9tWR7zBxhWRgXHuQQKqaUeFoXli4YLSkC2rxQ0FDjs9GWKMzbpBjLhTmFT+NJQN
	 YafllH5IhEatzRl5MzF5AMuSg2bCLxRu662wTeMp+uPfLvqpwXMHvfyQX2nTEvqBW5
	 ApTLcltLkMIbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 750EEC001E0
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 05:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169786609641.2689.17571358642786179725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f47cd59885c9dbab625dc8f9753d7067107324a7af61288655891d868fb2615f
Date: Sat, 21 Oct 2023 05:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697866096
