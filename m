Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C00E52F7AB5
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762799993; cv=none; b=GBwlOWYUUBCfAHcYKifc8hqoiM6sHBJsxhBzlKRmwdw3PP5RhWYTOxAGyJSJf0YmDBhOfUKp7O/+k405v5Uey+lgiepl6YoMReLXCfS4VeKDdC6h2BdEjsR8S2OS36+QCOn4uCvrPDMNXxyEjkv4puFpFoqxl9tJyV9uv/Pf1o4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762799993; c=relaxed/simple;
	bh=UWJce8z3KlAaEcBfSRKN7hLA9Y9qU3A0kW44AHqxEGc=;
	h=To:Subject:From:Message-Id:Date; b=O55QYoG6NYs7HLFLitu5gXN1mb7iMC3MtNvC85ecu2OROv9fqghiP68Dv8C+Ay1ph1YdmYcTUe3ki4BBTwDxsEu9r8B89Vm1orW5Htxokure5VMfMpFHZheVLLgAy7PeTSx0JQwweI5Vpmnkw6Ys0U0Q2eiTJ1U9FXNjQ/Kr1VA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bd6Z2NAi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bd6Z2NAi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E42C116D0
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762799993;
	bh=UWJce8z3KlAaEcBfSRKN7hLA9Y9qU3A0kW44AHqxEGc=;
	h=To:Subject:From:Date:From;
	b=bd6Z2NAiYJvPK08XRB7KpWHJZwxFILZnfUZ8uEGxaCgpTS8/gPpOV1bCyuPq6JYmp
	 8Jwgf4h6ee1FyWcaAXHDBB9v5G7tltXIwlkUrwpCmxaeT49i1ihG3eVSiVhcSfYrcP
	 DBt1HxzSv8Yr7BLChQZtmjVa7y40StSprd4Xrw11Q5wxnxOu05bnifHi0GTd+RWR5Z
	 /JjBRcMxxMRfy1A+rRyjRzh5pQqEF6Ij55N7K/F1BHH+SoE23sQD0VGjcfuDswTuri
	 h/RVQ5DnJWQ/S8RXtU4PJka6ihTjkT8098zfv8qhsxwOSjqRpPCu5mWQfkZAoZOBDb
	 rwU8tNOry2jKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BD3CCFA13
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176279999359.31335.6341013477869247303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 797cdde407045a94b402e4a6d0ac4d81590ab9023e9f69ba40593fb1e8109361
Date: Mon, 10 Nov 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762799993
