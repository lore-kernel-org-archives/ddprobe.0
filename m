Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1453F274670
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766318634; cv=none; b=MgMo5qT5JzSGr0DBqI/29gfe6gUhFpOqtDGUbJR8o8v9Tr5kL8OhiPbePK4UwUb3zDCq13M8DpUn4f60MfZVFMVwKdXMRyOUk6JOYk3mUvHOWFPDVtonnpsErJBzvgrzyFt641IqIUnOBc5P0PhGGXIU2BZjhmr1filGhMO/DDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766318634; c=relaxed/simple;
	bh=uvKZvr3HhSKcCuP67KbshnDwlEPv2S6grIvcnwT7CFs=;
	h=To:Subject:From:Message-Id:Date; b=pf40+RnnROm+jfi5zivP7qLl9/merAZuozUWwtD/eFCI6c0Xiyxc1aJMApHv7gx2SyWVUUrqyMDbsQ2LMYq/4avq2HtoYJqOJXo21oRfENrXMeHJpv+rZomymlGD1Taqkc1XferFpo2z2KvoI2tzrfJfryVx9sKnLxKf0Pty/70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OFTj5VQE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OFTj5VQE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C97C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766318633;
	bh=uvKZvr3HhSKcCuP67KbshnDwlEPv2S6grIvcnwT7CFs=;
	h=To:Subject:From:Date:From;
	b=OFTj5VQEgPcyez2CalQ3L0LtoTz3av1fs5JVon9+T9/dLRRQWYkTxJK37BpgRdw86
	 Oq/q+cfdL1NL+rBWWxmd+WogQzq5PFfSiuEb0Xc0164Gz1qlhpE+9UgQjhHZxKaKsZ
	 nFXVw6GLeGWFqqN6g95/IV7ov+K8ZlbpFdWT+Iy+zC3eQ5OoPDhAoGV3Cp+Qiu0Vio
	 S2a07qxeA8YIHNUNrrqbgr0PRk76OPzuo8R+z5qvQvZm5V8UYNJ8RlRL/rwGP5P4P7
	 c+7+WuUtAUkIakmTgguklX0NX9HkrdIUl5SRSuLSrC0Y66QK5PAc/1IW1Q6H0fn6lb
	 321GkQ5Czga7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956A9E66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176631863358.25874.10686653100765923904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb07e83f3087d02af295ec18ee6fd906fe17550470e5b6be3441af3f8fd27f7d
Date: Sun, 21 Dec 2025 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766318633
