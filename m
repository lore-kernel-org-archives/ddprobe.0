Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273B71E5205
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761355794; cv=none; b=c23+TyeVm449NpeSGzRI36VrvGDfrjJdUyqE7J+FUHs5tWKMVkj4SXUcDURvhlEWv/w5ATUn1MpgVx8WY6GhDGD5BZgr2TEWyXfDzzirzkFtyfp04OSakruLy+ktARAqyhqZFcm5VDhxmDQgvCnIg8+V2DT8/DP1pAbCo2oCv7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761355794; c=relaxed/simple;
	bh=Zvl29CSeX5NN2jKFrmOhqe2w8/h+JI/41dz3fTOw1dM=;
	h=To:Subject:From:Message-Id:Date; b=C5lnnrWuwfKmsUnviKxqRTLK4QgGYAl3ha/uNM9QHf1fnxcsSH3fTYxYHU8nmmzyewmu+23Fi2AyfclJmYPdL56VPDXnDOH7SueyIxSFE3L0mCMrGOBo7HxuwKd4BWUvuh8ml9i9TqO3qn1KcXtEeSXkEMGfyDVtk7PRbRSGkYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AUFQYzlM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AUFQYzlM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA5AC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761355793;
	bh=Zvl29CSeX5NN2jKFrmOhqe2w8/h+JI/41dz3fTOw1dM=;
	h=To:Subject:From:Date:From;
	b=AUFQYzlMaJhTByl0TCEUSDg8IHIgl6Rw+dN7jLdg8dn1YWCTuaCSKBdj8iL8J6ehW
	 QaIPKszt69XP0H0J9nAkPYCUJO90CktlJ/KTKqN/WlEvdPzbMU+FuB8o9jQo4N/jc/
	 F4Q/ML6g9yYHiZn02yPpJxXQNtHf9tCi9fYHXJ02qWWyjbA1lHs0iyzoLzkzmKW+PB
	 CSPEkB7VZK1YXJHNUH0TT1TGBAvOquSv4PzrkWDNFbrfH3rXZ35TWHFiechqBe9OBr
	 YR2p8/VrkJxHwPHFdRQFrS+ZbxcLfa3FSul7wm4PvvQtTfjgcSbd/d+agsszu7Jp6G
	 WqS09ofoDoEvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95682CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176135579358.6323.7298704143578277432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3171dbd85f477dd782e15dece8c55d415391306d66bcc4b1d081c9fc464a5b03
Date: Sat, 25 Oct 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761355793
