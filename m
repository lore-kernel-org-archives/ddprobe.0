Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 066BD15E97
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 00:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765844574; cv=none; b=Xzt7KFrW9AAmVd9n7ZZSXcS1Vfe5ctp2C1BaPsM/5SLemDlgX2TsUs2XA81oHQo3CYmWQh5hb0yA6xKNkL+dHDUvg6rB5HHGq7wcjq2zZF1cNbeK6JTHcBlbqqeHH2S+CKrss3OoNfLtOgfTLZiqLAoYWOTZ3CilgILbln7p2IE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765844574; c=relaxed/simple;
	bh=2KP2j0a/BYY99+TeZovmzWqY9K0z/khR6w2o57uT2b0=;
	h=To:Subject:From:Message-Id:Date; b=uHky9WHAHPSI8w6Pwv8rLI3Sz6OJ/SEuCO5qZ3PSq0Lh+kcUbzDY4PNfPCUYLjAANCyfJc/mDHv4bqid2ESVTKr1KFlRUOTkfFwyJ7mD/qojSzQyZwlsSV1xYBb0SBfxpD6GTJgA7rWx4FzJBoDpjGZ3wBSiMfx5htCDN/sImWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jjsQ4N0L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jjsQ4N0L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBDCC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 00:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765844573;
	bh=2KP2j0a/BYY99+TeZovmzWqY9K0z/khR6w2o57uT2b0=;
	h=To:Subject:From:Date:From;
	b=jjsQ4N0L8J0eBF4uD+2UbwARHljmrWH5sLGUAzw4D31sdYhcTDT7ZYJeftQL7CAbx
	 6tplwCyV5D0lOXHPN4I3LHX/uUl9+8RG30G2eyCX78x09SSy1NKClVbxlUoukYvaqA
	 +2MFI+5xD4b6a7qVEQ0qKsxmozrZ0dG4vDNAvm9TD8yoo2NeEkULaHgNOb5ixdir2k
	 /kk19v9fYxSCg5COMljlC9ZIGi3655HC4yRqxsFsWFgi8a3ghha7e05OyoGurijlxN
	 HSSfG0bS8sivKtdfXnRMTPnzfcUFYkDF9yp7FxAqKu88cwif5kTme8Z2la+YMGbdnz
	 euizPblAO7NbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91946D5B87A
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 00:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176584457358.25875.847459503359149108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8723b70dbe61f6cf89de12c5db70ad5bd620a077cfbbace7ca68c1a454f1572
Date: Tue, 16 Dec 2025 00:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765844573
