Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E75F2222C4
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756487394; cv=none; b=D6asdGazTNbyBWhDRWvE7aH6dQDROxLdxKbGqZrFaCA0EcMRlLCHxf03kUgGQQ8UneN4ge49kXzo2wvFChVQq3Sbj409PhJkPFVPERETE4m689i/XRM8Yiw8uQi/QdvFCmsZ9qkhiIZxrYPjf2x6/bZ8x/RN/c7P4UprqMNKXOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756487394; c=relaxed/simple;
	bh=AjCiW8dZAng4T9xLf0G9hYl9KKK2sAZfXoP1QY4nNXA=;
	h=To:Subject:From:Message-Id:Date; b=m32EpCsaf2DyLh9+gqKjoZGReCxSG50uRsocb7u/8y12hfccR54zn292yLMiNbzfyUqX/BbV6GcdRtab1fdD0TMTlg3eD5TSAmDokV2a63HlMFBwMetM/I3B60Ywzqu+UB9cdIOxF+Aj5YqV7DQd+jkD6g31o2Zv30txyBVEwc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iH/k9UmS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iH/k9UmS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00CAC4CEF6
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756487393;
	bh=AjCiW8dZAng4T9xLf0G9hYl9KKK2sAZfXoP1QY4nNXA=;
	h=To:Subject:From:Date:From;
	b=iH/k9UmSp57ylSz5Ok7t9soyL0wsty+s3z0MoUFjkfmKqdwpINE+LZDKp6eY6gjpE
	 9NiVbAXEqNjhfiidwQrxITQOP3qV0V1XA8HEUvWKpvfoOZurEHnqUnCZB5KC3b71Xo
	 aPSvK9QV7b3RUHFWAcioJ78E+nF7Vk/Jh1BhTtYQubFB84XaF13iKIbz54Gw3gg0E9
	 g1FNwV63fXO0dqqujsujYgz0G2U1XJ+ql7EWE1JE2g/lftGjel2Y++NoRfhVeT3C9x
	 p02FOjRqdLymGLUrmtTjhwkbrIz54Sop4xJD8nxtC8vdoFHpYOXPDR56CUtW1E64rL
	 jUGV/sB1uBuqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90726CA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175648739358.10631.8205799081596624829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 158b60529165b8a4fc04a966c8964bf0798534256d0992e57c85116ca16caffe
Date: Fri, 29 Aug 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756487393
