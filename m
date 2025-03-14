Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E25C1C8632
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 22:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741990736; cv=none; b=fRxPp4oZkDT7sXqaZaZ//SGyiwe+nE5wC13kHqwfBg+QVcbCde/tplsh3dXa4o9smjqKJEuRK+4kgWPkXISNv0wb0GIftEojJOT0gp9Pqg5Eqi6N5Z2kbRXgPg5IKo7I1ejA+AGJFZbITHqGtVFUJ1iNHUpz+pwP2pm2W3ZxZ30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741990736; c=relaxed/simple;
	bh=ErZ3LOdTvwiEAS2eZZM9TXWH0CM9EB1/oeuyC/xr7GM=;
	h=To:Subject:From:Message-Id:Date; b=YgCHjg+e7mUXkdyzvLIIcMksT3ktUYiduOF8pr01TPvWFVC/5AODJaYcRenKrlsqBTQxCsdo9NAIs8YXx24YQf76z+sq+5j5frsMkI0rhK+C9Q3D6hj2YtG9sOuNdnJ2veOFnfiqO1bTovxDUmCYV6wsN+cbqnrjUkwBF0j6ufE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HfA6UkoB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HfA6UkoB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD0EC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 22:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741990733;
	bh=ErZ3LOdTvwiEAS2eZZM9TXWH0CM9EB1/oeuyC/xr7GM=;
	h=To:Subject:From:Date:From;
	b=HfA6UkoBi7kWjA+Z1MPeQmjjjksrwApvQEkFNkzl5uQ1h/M2prG4DBWp7yKSBPw9Q
	 MvKcFBb7pPTpeg5GXo9TxTouI6BXv8u6soSA3P5xoIKNp7c8WQ9VAXvEEE6obz6sfP
	 Fbrhu6r7rxK9/6DSEuMtH0kK8W7a1gvOIuj2cU1DMyp3HXK7NRcjohLi8OjIbU/AVS
	 xMafi8N2WxExp66n5pQbuOQAYiB97tiuVVSGFALk/zOxmY+vu6YydYdjPh76YlOLbc
	 0YEb3mrLFS61KA2I8GuKjnoNxxXzA2ZmzIi47fAAb9YZZPaRSj5VVe9DdVmzdFbN+u
	 sHbribJzww+Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92133C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 22:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174199073358.11487.15374424975560265866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71036f44690ffd53153cabc6e5e3b0397a1590d858665ef55529b4724b570556
Date: Fri, 14 Mar 2025 22:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741990733
