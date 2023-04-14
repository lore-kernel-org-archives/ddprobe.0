Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BDB97F1
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 07:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB088C433EF
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 07:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681457525;
	bh=H4X95FF2SecvFmh2v/SNVue0RQjVm6JrnyRfkPo2KHw=;
	h=To:Subject:From:Date:From;
	b=SbDDbHNWgymP+2zOL3+T6+jGJ6g/PwUSrIj/6IPZr0iurV/58iVDQc31W1tFsy1MC
	 yGx1ycaMp5LetdXJ99N2BGgZCvdLiivbioU667ziypCGdMR/qid3D18EZpS4ssm26I
	 W98HCX+PhNHnEoJz8LkVYEKYoV/LuqpEVJpoBr8ySQ5daMQ1RnBu9F9bwDkK4Z7lyb
	 X64u/KN3JirvDJ6DrsNnzRIGsZ2MK9OzEzWmjhe+9XA+Sn1F+lUnopb7lgLXt02Snr
	 VYeAnn2fIW/Hv+b+frcwe0bg7Oyc9Odu35uAg4081GhJ1C23QJzHhV/O9JppEfbUkJ
	 1odNMdPe6/udw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD5F7C77B70
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 07:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168145752576.8498.14460008678172924708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76f0a0fe2d60760a3e4d0edd025f662900c5b43a70195e0da71ce397033af430
Date: Fri, 14 Apr 2023 07:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681457525
