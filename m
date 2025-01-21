Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CC7C1F4285
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737492354; cv=none; b=Tccy5iDSJ5Kou/fjWpHzpj8RoMyasCACLGsRcnd/rCMazUq13uhjDmS+ZaE9qUlz7MzFyTEbbEkKwwhL0a0d6NDKAvR1m2cEID/lV2vknFoUP6FT2uhxWNc1tsjMdHQs1mzs3JuZSCyyNqS5F9svzMmx2+98tMgb6msgGmzh1p4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737492354; c=relaxed/simple;
	bh=SdLyFwNz9U7W6ro5iFDYdmMVndM5K8dt6ECnBX4SUsc=;
	h=To:Subject:From:Message-Id:Date; b=nBOKUsgFp3tHkh84NvAydKgu6+nsQkMSyK8Kc0EYOntyDNNuM0q6ayO5OIo9h+C1SwThYMBC35RYWhiM9YILS+LvxJLVY5TLaPBflhLF/Ni+SwGcvCopcLUDrpHA+eUlkxCNkLYUwJWDQDaxH9tOxXA/WF7s9r7HYp4+UfVzpiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b6I6GyBx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b6I6GyBx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A45C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737492353;
	bh=SdLyFwNz9U7W6ro5iFDYdmMVndM5K8dt6ECnBX4SUsc=;
	h=To:Subject:From:Date:From;
	b=b6I6GyBxT2pHor/dtIq++/bMlLTIzcnqdo2nglh5OufYcJs08+l2iCW94zJEaAFM0
	 J/yFtau4AcdK067loK22YieV9Vpe36lNh4IElACj+FXt19F9aDljJubHR6ddSpDeec
	 4/vC1lV/MOedgsNUzv31yF7UuxnjvGbo+SEbptj0J57ih3nQP6p75cvvrP0sw0aeFj
	 FpkxWdagB9XMzKdxjZBTLK0nDB/CK+Cg7YV9tJXp6qKwFA/15fSUfthZaWBlTOpuRR
	 OsXA1RJvXOYZrarQpZ+98wMIKW4k1gJZcZS+nXX239wGkFIRbPhfpFf8xak7W6kCrg
	 YE2Yudsdx3VtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ACDC02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173749235358.3666.1297298848353718901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88e99219e4dec13da2cdd5b22ad51c20bb2037f2c8edf5637fb6fd9ee3f44d8e
Date: Tue, 21 Jan 2025 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737492353
