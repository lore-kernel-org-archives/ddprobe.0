Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0F382902
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 10:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66645C433D7
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663842053;
	bh=geloOyQR8NNQTl1iB/WIopFEpmg9G/OZ5WiUU9F5+og=;
	h=To:Subject:From:Date:From;
	b=mj/S/R10zPFpQ6RZD9o0VPdTM+wUHQ/BuuQrj+bS7nVMh352W92dTSmbm1ODdcMIA
	 fsLifiTJKa4z5iXglBjJKZMwdC658xx5NyMpVFDALDywU7ylkr4KAVDCxRF3XNgulV
	 04fShTDc0bdQLUQ7p+44MQhztXkxu6eQfrg1dHQBZMGfRiwD6rTKgYP3xhYFDVUg7N
	 Z6hwBeX8NdIxHEyU1ZN5UH+A/jq0JU09szqBBd3ktOAYcLgBlHyze/rZwVD6EDJBte
	 SDl81Kxi3iRIJ25zOgQ1xxHeqPESfBd2+MdJDuuS7WJhdecOlqxkTxnObsX0VdZ5rE
	 BB7mkTIxWavwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F2B6C6FA86
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 10:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166384205331.28760.885585047493342914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c4b2fadcd7432b5d9b229fa44d8c08c3c0e5523da66087a9700ca89a0e943d7
Date: Thu, 22 Sep 2022 10:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663842053
