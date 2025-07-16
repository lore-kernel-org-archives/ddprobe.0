Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E76C19755B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752698394; cv=none; b=gfmGtXhNlf7ko+H67QX7fdVmwg7tcFXvVojt1PHSIbyjcHqbOzTByvLxDxuIUO9ANxk4SbuKc1lJSmDGSi7Ip0aovjLTvHYbjlOar+XMUsO3dV4iNQODxAw57Rb5xBUN22Xi4HwHigNMFhsT7sDMEp8FlRdJDxIVaMwxX/Upjj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752698394; c=relaxed/simple;
	bh=mdDtJIRQcc1h3nA5W6k77lVh0ox1s4avoHwW7Mwi+Sc=;
	h=To:Subject:From:Message-Id:Date; b=HKKpuWDHKNKiVMhLFgJwipSX/r7R5gQaOOuSQQy5+1nalLz76OfPmcjvWFK2Jfg2EsEn4f6CRgknPdaboIO8obeTI48utXe3cwUSGVPus9HOdpsClCI0v/XNO0JBQW4ZL6VCh0bzyWmHj+EMdlJZ/SR50Y23CjRGdxj8lTEM8wI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YSj2fyEe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YSj2fyEe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1806C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752698393;
	bh=mdDtJIRQcc1h3nA5W6k77lVh0ox1s4avoHwW7Mwi+Sc=;
	h=To:Subject:From:Date:From;
	b=YSj2fyEeCZNX92RlSpQMS+VCFLYgWSgzj3dukvb9Jy5PXhqQ0qpwnHjYRvbOmqfTi
	 SE/b5Wguk5d0DmL6qAtgIw2T9KTYdt5ioMz43S1+/8hYAYilAr2b6YPKM8OaSMTBev
	 5V2U2acwIiEwU4vCWIW4xGdoqHJ4OnQhPnEg6zOtWimnt/tGE6YUcTHFyvionInpXh
	 /YQub5cO0yM1I/YAQyDpKQ9XVSERi42uO6GhfNkpNO/94ac8tv6dep59SE82U6/z7T
	 1NebF7W17KBENsp3Aek7ZRyJC3JQIKZeijRlvpgPWTyyApbf+qrvs1m9s69aW7Wrc6
	 cItOWAq8EQsag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8BCC83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175269839357.337.17202731803272247286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c739423683bccc1648fa8c12ba1a1f966509d0cf6b817552b81eb27d907a37d4
Date: Wed, 16 Jul 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752698393
