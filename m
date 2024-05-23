Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5494A14AD0D
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 13:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716472403; cv=none; b=utwW+ylD46xMrANCdqYvG4oRfj+5J87WRA5oCdYo3uPX4R4EOUiiwm3zR9aVtR1HMEETtrsSOtvZpglEyJSbcAqSIZba7kxIzYkV7R3ef3m3dXLTumK40BYqtudNdsZlKI2urfslhx2hY5GDkpBMaypqRHWnAXrdaIxyYytZQRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716472403; c=relaxed/simple;
	bh=G4NeBKH4PUkm6oQmkC7FcC6o8criNyYpsK0VD9o6HxQ=;
	h=To:Subject:From:Message-Id:Date; b=MEYnkL+MH5WlnJ1LCXP1E7RaI1Nc8xoQ3gYaF6S+ixlmtmrS3FzLCxi/C6FgmryI+6aMyFdCjI8tq8pFkMgQWB70qYdzRaBBHjn9PEsjRvAfGxibxFF6JrPxdHpbQB6LhzbaNMnNCSY/yiwwTpGkkS+G+Hru3NI3bSHR6uDeaeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RUPJJg9o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RUPJJg9o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC25C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 13:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716472402;
	bh=G4NeBKH4PUkm6oQmkC7FcC6o8criNyYpsK0VD9o6HxQ=;
	h=To:Subject:From:Date:From;
	b=RUPJJg9oWcJW9Ettw/o8bYCKl52AFL/3j7nales8yTx6SKNRAKjhhEJwdRl1jcssd
	 BPX0VWWs8eR8jkQbzw4ssJaeaUlRHNGVv6lAsBz2NAUL+4ldTlxiiQivr81NDnJzxy
	 KYXJHeO2NWEofOWO9scmD34+uVtZuSWwG1GRL53Yt9VCWUs3tKGuroQNDUKDqwqLRh
	 0AFBf8hb6FNrqGPjWu0T0+qxsgdfXIugkGEUQpo5JUe/0+b/MUuTvZc0m8kJX9NQ09
	 p/eaObDMDLuDGm071h0sYdxl1khJbfgIOMuJNAeX4BDwjPcNEhVwlxhUe6XXPIVabk
	 5ggH8xs9Z1Ipg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDFD6C25B75
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 13:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171647240276.15481.11526047477344565562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b524ac116c43c08ae8bab646bdc554dabe8bd85cc5518cb00b37654f1bb0111b
Date: Thu, 23 May 2024 13:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716472402
