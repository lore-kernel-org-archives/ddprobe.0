Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42F007E
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 07:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E914EC433D2
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 07:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674287525;
	bh=h15FSpmacTfDlzg97twfvQi8eZSN62r++FZ9b6ccFl8=;
	h=To:Subject:From:Date:From;
	b=YkyUf8MKvAIyr+lOymBPrRqX9cfdthrRT2zzKwXW16howOFOTBMPOj9VjAO1J6aEW
	 +NFeP3nccFUUO1bUXCZZmjAz17ki7yz/EI99G6ftVkEIrCpYOAuSr8m8sXvv493Zbt
	 xRHoNDcocdY2hpClHWQA060Dj09cwpgy6KSR274O8J7v4s8bbpwjHhmfu+pin0tzxV
	 Yb+Cl3ewgF726WnxMZA+BrP3MguPclHhYQXSNjUF7+zkzJo1EKKnFQ1ekZF8phUdfU
	 CzwYBo62Zo9X1S3y+tJoB710tkeIy66/tuhX7KfMGotaJT/y94DyB+lJ/ywqgDze1y
	 klNxQcIZaIVCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC48FC004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 07:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167428752577.22512.15785369110870459255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4aba95467f014e93787be4e1e8f1c42f6c4d70f2b2934d37c9d1dd30ea7389b
Date: Sat, 21 Jan 2023 07:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674287525
