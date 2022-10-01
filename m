Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2481323B
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 20:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7408CC433B5
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664654453;
	bh=Oz4VS9YLrVaLG2mEFEdJ99YHwwQ1tT0cmcwFEcjb9bs=;
	h=To:Subject:From:Date:From;
	b=GFq9V4CPOqPhkDw23WOyXChDZhOaaJLGL1rMdK9Zzo+ojIaDbTtPJsVTCG+EgoGsB
	 rHBt9UBTtrNOsf4fQiIkIFiyOmjpDjhgnoVx/Mi0B2n2pmegZhOFwQkNY97A1wXWgN
	 HvnzeU3Of360ITVYQGby4CwghmvO/f4+8/LgPrnVqfGUh1E9Gd9idUYcm8F2eD4pOK
	 UOj4U9FTKUInqAMEJZBBkg5moTzR133VZe80VNtf8CcUm+MIjBrQKLRud1a/JFAb6t
	 PRCI8JpQF6FuDzcgUH/+EtrxnSdxIZdGboZBODYTaTMVOVb0tzCB8NpZYRwHLrcyZL
	 SEggsk3zQwf5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59EF4C433FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 20:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166465445333.11482.17558498960351776173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a88cc918fb525ac9d05df6787784f1ead5b6a2a15a21198fdeb09f4a7bb77f87
Date: Sat, 01 Oct 2022 20:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664654453
