Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6EFB36492C
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 17:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772644494; cv=none; b=XKqp8YQ2Yb2FVGaF/Gk/rTReMrV4rdZ/WiY7tpBPNJD4z8mgNlbYMywEUCkcuhPMvSgoNkTfHVWkJLE0T5WjnSdT9UuPWX5X9nMIjLDWRVmVk1wOaDyIKMreHF0kGS9rX8J6ONYiknagjfGvJSfm8IMSCpPQ1sv/JWPPTTbDvG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772644494; c=relaxed/simple;
	bh=5oi90xGdTzyH8FQDhjK2x0gChN/L3ZppsRrdA+i0tuI=;
	h=To:Subject:From:Message-Id:Date; b=BZRj2pKihE5XCBTgLlMelbrHfUnvaeJ7BU0EEI+3SwzMGuZb5TOxlx1t2gqTBNgBMEYUe684QpOaCLJmD6YhgpDRK8WyL+ZDreSUa9XzU+5dvILT7Xclt8f0g3+Y+BMmYWs2p4xFnZwJhh3QNbStKSTSarqwGDv5LH+hHQQFFP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i5e1+FuJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i5e1+FuJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 490B7C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 17:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772644494;
	bh=5oi90xGdTzyH8FQDhjK2x0gChN/L3ZppsRrdA+i0tuI=;
	h=To:Subject:From:Date:From;
	b=i5e1+FuJJisE0PhQsoCpPc88qfF+182XPMP92VfOKRotjvrPQzamljfXF2GnvDleu
	 fqLSXjIw6QQ7cln7+PkLdIsmVlEjsArtveJDwXwPAULXl6bPZ+nQ1hX4yXYYimviSL
	 0Uun7dGPqnWwtDEm0elfvaE48vDjiPeFK9SUpekrkflZEx0wwRphZg8HvUmz35kFS9
	 /PhCNL+N9Uri5oBwh3gHnkp5YHxaaflw7GliMbjtXoxZFDFSdD54AtiZqkVFWpsC8b
	 0T6YpTvBNWHhl0aX8Gj5xfp9RoNSDMzO1ACxoyhL3n0C/uvufiTwwX8MmUQAaQToZt
	 xf5iqn43oUh8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A945EFCE22
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 17:14:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177264449399.3064.2076707284682372589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 041b284c73bf8271f45bc6e8a4ee9a338ac45458af414700d7efd2d823cd40d8
Date: Wed, 04 Mar 2026 17:14:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772644493
