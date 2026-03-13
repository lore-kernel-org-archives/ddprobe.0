Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B391A3029
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773364494; cv=none; b=IffruJIPg6psYTgFd/b2epGCULGtmM4ohEWnNrHiaqEcO770nu1XQo6YIT01rQdQOptws0p62T6r0DWgIW0lXlNcqAsCCy77uGgzfxsI0QREVFWhzKvI+GuF+uFIuOdD8S86rkHTkK0VuDuDN3bzbRUMn/Fl3I1vuI1IWDbTD9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773364494; c=relaxed/simple;
	bh=K5/kuvDCXx62UUMKXeJKIZHZKUITtttW6kCBWVNWYy0=;
	h=To:Subject:From:Message-Id:Date; b=MQvMLiIEkhNLP4HASqHh0DcROqx58tBF4U/4HjHWi7IkWDKtjQtT7g2omgm44YtqIgpWzaGzw5k+3rICpsLEShtY92Hnlw5miFkh/qqC9kqSbQIX/QuC+NB0fKoW52le8HCq411zx/mkxq8ebK+5EB7pQSGP7gRB3FMAI4xQR2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gK5E4l0P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gK5E4l0P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB84DC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773364493;
	bh=K5/kuvDCXx62UUMKXeJKIZHZKUITtttW6kCBWVNWYy0=;
	h=To:Subject:From:Date:From;
	b=gK5E4l0PEhzXPS3TiMW4mBPHwCHYoKU3p2AJAhi6V+Y6+Vb06QegXf39GWXA65Ie9
	 NEL0xjtIJQryDJCH/i0LdGkT1D7acHfjBewd4wSk6kXw2BpKFFr+HanoZLIfSfN+i+
	 sbhEGCLIEsYuqMGKNC9HyhLRDQzAITqIixF/9HFmPc6XvQpzX01ZnYWc/q6NAofjJI
	 cqsI/IPBoe89XvuIsjo6iDT3fA+cdWspDSHWiwuT5OOr9ZGDkFglRvNcZmUxNEkfFT
	 PNueL7Y3y6qioF/Z5LCpXUAnjJFLd/28uOmZh11JgZK3CvW4E0u1wPMkb3PygpGt84
	 9oqdhi9zhBAZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98234106FD61
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177336449361.31233.6029803825748717335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43421d740116a74b2c7ebf60d1040468539b2325524468325f759c05592ed129
Date: Fri, 13 Mar 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773364493
