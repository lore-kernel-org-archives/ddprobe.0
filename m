Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 403D7305683
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778985634; cv=none; b=BrM1jC/UYWPQ6tzrxccu1uUcTUe1/MOIbfjliiuAD4Jk75GJ4E14bGmmvP5iEWgqggPe2oOLYe221ZkEy6ZDKmcBs0pgV4RxpCFh7ptbxvqKazyKregFySj/mZ/Ug42RItTqAi2O4kKI8ViAwLloIg8D6h/fq6qwOUo2VrD+MmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778985634; c=relaxed/simple;
	bh=d1VfYGJ3ygbBQQxKB6z2m5k0PoFsjnsjfGx0xMvXG/U=;
	h=To:Subject:From:Message-Id:Date; b=Z7J9QWRtSKh3Zx0t64cdeBy+VXLKIpMbJbrRl9PoWll9dKCx94KknerTcZHeCbOmRYWJQJW3C+JESHDL3sNNvxMiez1At4urLH0RYtngAWwU64nG+W4vsStpKO7vzFsDVRignaYWDPqX+a5AjvhPpGGvrcZBAihx+przkqyYiqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NOXhWu/n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NOXhWu/n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B25C19425
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778985633;
	bh=d1VfYGJ3ygbBQQxKB6z2m5k0PoFsjnsjfGx0xMvXG/U=;
	h=To:Subject:From:Date:From;
	b=NOXhWu/nSrIYXjKF2M31UWKJ//4Q12ryFtJmc4qbDzSLqH+lwAvCpkN9TfxU2ukUL
	 S+yTIhwdwgorDlCyWqBduJK3BSKsEWn3JnEtiwdwKtKeVapw2Sp7Qk7cZSCO9kb51X
	 WkdLWqs21HmS0+SI6txCccdc9t5jBpxo0/M44cA3nWMb+3B/akF57qqKhmAPNL5FiF
	 GsbpCSKCnnU5AL86S0jbxxnMFvbNn2uIcWPSECtNHgSdCBHuvFo7pCXl4UsIdOnOe/
	 Ygd8P3xRI4VcWBRbKwxaNdqFD+PFdITssRNWcuTg8MimIxLKj9HYIFVGFPP9Js1Qh3
	 B6OouV4ocLQnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEA1FCD4851
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177898563373.8473.5115136086065264719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed4521dd57a349b7e587c0252c49fd36e9fa326038afc6228baa4a408305aa22
Date: Sun, 17 May 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778985633
