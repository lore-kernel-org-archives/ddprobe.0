Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1CF37C
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 09:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FCECC433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 09:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672566687;
	bh=gZfluk/ti6OkrwfVUj4Fx+Oxla5MifDNVL2vJvJ27g4=;
	h=To:Subject:From:Date:From;
	b=jXIylwHByMWf8/j2Oi1xe/1xQnGits/NuQH+sJri3PXdSlqH+fMMZclJxLkgJo2bw
	 mTcMRO1Jg1vPBtGtuTZfXCYK2VgHGfe/cBul9bKLqxakyQb/AQNXR3XDxMdIvyrbXT
	 TnNGhIeOd/6ISSLhwXH0Qadt3+Z24QtEGexSRlQ5uvjZzvZxtovAKVIsomQZ6EKHBz
	 O3/qLSD1e01UQbtLMbostOh0L1v2hJCEhWnNEptG86P9AthiwmV2gggks2npbQnNzw
	 Mt4y1tH/16BdKE4cCXFUrUw8i0PUzq+3uONBG8x326cFThAUipNXxvl/5nkJks3bsV
	 pufj62UsfrXww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ECB6C4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 09:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167256668741.756.15509621355796558651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3e03e9e0d652f06df14838d3509e805409200fc6f1b49400fe67b513f8dd345
Date: Sun, 01 Jan 2023 09:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672566687
