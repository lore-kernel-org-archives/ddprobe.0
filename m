Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D8217996
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735072554; cv=none; b=UY1EjFfq3S57iqWwKko+x1jtnNtJKzxfaUxmxAk7NVDRhqwHFTpVbxOehu9YzCQYZ3Qeagqv+AiaQx3G4LYZ1yLzw6Mgg9+QEE72zLyRziH/ZYyUeak2AR8H8MNXPr+s98vuYbtjokEUkIO7QjDA5OeJqEmO6IiSo5s/d5cARLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735072554; c=relaxed/simple;
	bh=aKs7CIJYu0Ir58Q+2D1NhPZvzAeAHV6lFB+85e8mfsw=;
	h=To:Subject:From:Message-Id:Date; b=XrCuH5rGhxztQhNlY98tz8XKgdyWOxZ6i2AhsAV1Vp2Ita76nul/2CnwJxaI7AMKRpgVscgqMZ/ubup6tCmNuN5ZvdauQbWn1D2yuqmB59qnVz2esLWEbIHN4A+lmlRBFA86iyXGxQV40yz0zJpA/mB77e2g4alKryybKapZjV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jB+GgzzA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jB+GgzzA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8206C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735072553;
	bh=aKs7CIJYu0Ir58Q+2D1NhPZvzAeAHV6lFB+85e8mfsw=;
	h=To:Subject:From:Date:From;
	b=jB+GgzzAwBXcJZXD0UkJgGR6o74i40YO5sWOBWgouIpObSzLR7aCOltAUS6egXfMb
	 IizLT9FKLIWiV3X3FgXsJBAmijXoLDo4jtgMaSt87+4FwIM3N9mIhI3d7z6j+ZQHS9
	 ur2CpYt2NZndLDAeE/RlWn5DNCXKcy9DCCAXpeR2jF4tC5hEN9uagxc26dmKrDS7/z
	 TdGKcmqxFEDJDqZVUExQ+eRRIFWz6F+l0B98NqMBAXKKXClBX/P5YhTK6xy7NclGyS
	 Eyt6M8ZLUpfClc+Pz86XB4O21BRxFpPp91yFHBxTbW7EdZAuvr4VpHZNL9Su26+5Am
	 boy5XIUFDDlSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1E89E77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173507255362.28834.6565445297268801480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 087c1207fb464fa8125ddd8a1e1b56a25a9a195eba02079ef34287c9bb91f1b5
Date: Tue, 24 Dec 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735072553
