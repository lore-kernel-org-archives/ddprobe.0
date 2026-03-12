Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04E97175A68
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773324894; cv=none; b=p/9frg9vF2LHG8usKMGaBEcLhSi9XfMmi32d7BCkDhideA+ygxXKgl6fmAPzapP2zjgPQxAh3G42FSFGUbOt87aiaWnvlx1lpY/WQA8OvTykfFgYvV1RwL8IZWcan6Gvmpv7Uf1rum9ELA2JVYPNFmVDgXVInn1njzwHw7F43Vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773324894; c=relaxed/simple;
	bh=QrZAeL6UM0jyGthnFQkgZL6s141X9LDTsI/Xb7TCEig=;
	h=To:Subject:From:Message-Id:Date; b=J/NWf+2TzU988Fhmrkiz4DW80/PqBJeUdbcBIWdo7dgIDsMngYUDyfgnhcGveIe1YClR315FbtMBTUguRZLY5xsu/cJKeG1zodOZbVuKv3+Hvz1fZ4X8anAtCHF8dvuYjULzADv1lPmuTSM/4NFHPbRO0hHf3SiHZuqCjPAQm6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iRqTRnmE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iRqTRnmE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E1ACC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773324893;
	bh=QrZAeL6UM0jyGthnFQkgZL6s141X9LDTsI/Xb7TCEig=;
	h=To:Subject:From:Date:From;
	b=iRqTRnmEI5yho5Jvtv2QMvL1qZ+5JufQuCdTHDhLpYESFnFGnVjnIkdHp3h3DvYTZ
	 TFKP8MgEpLH16cO+fA1yqTR/+pyte10YOUIrACHLH17VeIAyZJcY0iVuwp5TI8fQY7
	 baPmwBfdx0mO6jWDd2RtWYBHZKcFtl7NomGjAUWlmdwbK2rLBqgZ7l4H2kgHxfUXyI
	 c02W1Ev4fDDCy7FFjecP/dHsEM11WM5XipYb34dX3DZZ5VJnr20sXNXDEUibx5xGWn
	 +2N9t7N2jDyjZJme5DGys8u5tVH7XN3/v4tL06QwUle+NwJSlzv5NvEsRkmdOuOuKF
	 q47MKCvVGFdJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB141067034
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177332489358.21053.11044594632602324337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36d371c9f205baee6b58b7e825c94c6c9d8ee4348b68179096e4916ea2a8e8e3
Date: Thu, 12 Mar 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773324893
