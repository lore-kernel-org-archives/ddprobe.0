Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320F017CD
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 03:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4AECC433EF
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 03:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674877385;
	bh=+pUCd3AMQjlkws8BvoCn73PqGjpNGutjr1bC86lcNoI=;
	h=To:Subject:From:Date:From;
	b=RrfHw/2bzq5ay/bWO5t5adFp7PrfvzzxfpivHxfIjgnJqNDDZhW2E7xgGh0dgAgTc
	 lSN0pNsyZbxTy2fXc8taNmruSa5C4HaXWmI6DrK4laW0bbUR/6bk8vOhOfj4pNzsCQ
	 +3WZ+ps46Xz3k+lrGkBMwfQmpY2XlABxKN5hbxRxdgCRhA3x0CNDlUaBltxls6+69c
	 WNHHUMwtc1GafyaFbM09teed+3aCD8YUG1Ss8BLBq6NPksSfmLqGa3V91t2FqwwZxI
	 m7VmSYL8tpHU1K36JfyN4VZ+bym9Xhr1xJlYB2W1PaczUZEmnY+OGXuaaScV59Lv8e
	 Snndbu0BxzLyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5573C38142
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 03:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167487738573.30676.8031839992807780923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f27a5a866418033b45bfb7b6b5f2f04c2a8a0799f74e01ffacba51c27d2b1fa8
Date: Sat, 28 Jan 2023 03:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674877385
