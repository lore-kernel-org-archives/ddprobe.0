Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FBB820315
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 09:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716627863; cv=none; b=O72x9topFlulc4LkOZb08a4IKa2ltOoxOHcUXriiPXEDwVc38/+5bZMG/b/yRhpScuWcdHE2ECgTU7U0E/3fA9xqeci8pmdoTRhBbJsYwDnhTqRQi15HGRYbPrbcUnhKkC26eLBmxYWB9fqVQ4SWOtagrSqhom2sPtg/5170SEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716627863; c=relaxed/simple;
	bh=n1b+C7ou0NWRCtAcCqBVbXfP9a4EBMOlC2S+s7+eOUQ=;
	h=To:Subject:From:Message-Id:Date; b=T5qqSATCiToW9DlAbxFSG3lvR9vXFge404aJ41JRuQtQ2aVFtjwl1sGBnQiXWZI/fMZqvcVEpvp3OBwJXoX+HdXMpDYSQuXbWSpjhimzFpCjHxBCjViX/uWnvIdf8ueUyhW4F2/GZxgnyvWq14Vz2m1ySmoKdXDBHlrxmqMGE9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LcI7EupK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LcI7EupK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC16FC3277B
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 09:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716627862;
	bh=n1b+C7ou0NWRCtAcCqBVbXfP9a4EBMOlC2S+s7+eOUQ=;
	h=To:Subject:From:Date:From;
	b=LcI7EupKaOonXV/2shQF1h/OfrlOFAPg1zXmtxKfEHSzSpNE3YpQtgflom26UEPD5
	 jMeLiglYNLeRpBsA5fBKaX2lGLF9nBrBK1VwTGKJYhLoN+RL4KHXRjW0Gnhu9S9yYb
	 Wmub7xcUSvFNDDETogBS/4C6NIDm37Q/A8XLKN8RNlMI89FNDz414c0+zGVPf7mksl
	 CxJ7caQrBuCDbtLr6PKaIjZe/ooEZ3r4LvpRU6gWMjYhSWPEtHCOgb8kfHqOGeHgsK
	 WvqbcJHbmYNn7RD3x1gadEMhE8sAZONsE/rB01reBpmkq6CQFcV/6Mk7HOroCDDBlo
	 dUf4/LIG5kjlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7BE0C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 09:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171662786277.3196.3352332591320138496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42476aab34a5fed7984980383d5225fe20c93aa04569010aa5d37e10a8e12a44
Date: Sat, 25 May 2024 09:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716627862
