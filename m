Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D131107
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 00:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E79C4339B
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 00:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677804965;
	bh=vBTygh32TyOtiqPuxXbebLDAi29/enHC+dHkEarkmlQ=;
	h=To:Subject:From:Date:From;
	b=hRYr6r7MgrgKW4wuB1lmdT9lKKYReuqRnURwSaNltUQx32vdG5jucwVvGx7EWI8sq
	 rFjoLrDc7uIreOmjEkHvX/NQ8WQWr1KXAue8ppFyfzpfPo08vly7of7bAOLMhq4+9I
	 nN1sqlcnzojbJN9St6VfDiAON1IWkf5lci/QeNwF6PkWh5yN7DHMlOLLVwcvMjwHgF
	 XDf6djNSlTIuTUoeS3XQd4Dpm7pFhrJG84KhL0aP+2duL279t54X7Pbphqo02XIK4x
	 bncEqamEssoiZrIco84SvEu/PONNeYL/9eXc6YXlTAAJJs+UJgK81U1hI2yeYJj4d7
	 aygQWvfiFAT5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B59DEC678D4
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 00:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167780496573.15745.3639421446316858538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97048c9cf054d4c26fc6393445bd4c39361ff37653dc2a4a0c37411aec68ef96
Date: Fri, 03 Mar 2023 00:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677804965
