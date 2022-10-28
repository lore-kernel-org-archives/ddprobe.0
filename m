Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD7EB15A0
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 10:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70E48C4347C
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 10:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666953054;
	bh=FV2wFtx3C92OATBe2rqkChuzzXv/okmS1jajjY8PaZI=;
	h=To:Subject:From:Date:From;
	b=KAkWS4RD5dpJKhVdpVUthcFL4/8cpjzF3loWAs4QlfUytKexSNADWkPaa+CbZUejG
	 y0l5DN2NXtuDeiUfbR1u4jav/po4W+gX1aKkgRYv/4eKuHVAWGF4zZW+InYKKMTn9n
	 KuCcn3W4VDoDxdn3Spu+Q3QOPAO3mDbN9vfE3xP6NTX5gu2G33UkNyCRk8UAPCHrrw
	 4Uy9F7NjPbSqSpupI7MiZsw6/v7NxvKu23fXfBErkfqDeKEEMSo0wuTzu9c7EM3To/
	 vW1c4i6ItjX1vbmfd5ucUzDUPpfee2U5go4fNzSC0WmweokAo3rtREd12lnpFCDAWD
	 nVhEzAN72MaUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54315ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 10:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166695305433.22246.11831333997058460513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e476a58e07c56e4143606cee98b59e15b047c2737ec209bad7ba09a516b3024
Date: Fri, 28 Oct 2022 10:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666953054
