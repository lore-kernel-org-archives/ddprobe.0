Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BF1A86252
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739196954; cv=none; b=c8GapTnJMkkh+2K9hBb4pFP9EXQo43gi7UrXB63kkPjZODaxodOXIs2FPrj1MxCaZ/26pq/cP0YkF5OFgqcT3KWywO0Lsvjv3D2ZlO2m7DJqYsHhxdiilOVjAxOoJZvSO73bffXFJ+vG8iQ0L++3F3NvOYHLUwwi2GWA/tMDF5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739196954; c=relaxed/simple;
	bh=KvyYUt+q9gWz6JhCrf1/l3kfx7W2FSSuJx9uPHEwVW0=;
	h=To:Subject:From:Message-Id:Date; b=IdUBdhNu7xyoGMvrrCrgpjLYK6bxgLiST6IvMDZVkQPaWdm5YfIgksanE7TzoAwe2ChchfZGSV6Yw7GoQqZd5CJCLc3VgXzK11B0/e95AAHpHBOUVnprL/i0Pm8YFYN5fzZiR182x4t17dAKDNHZFW2v1KIb7CdblBVZyCxGgBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l4HSgJG1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l4HSgJG1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B761BC4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739196953;
	bh=KvyYUt+q9gWz6JhCrf1/l3kfx7W2FSSuJx9uPHEwVW0=;
	h=To:Subject:From:Date:From;
	b=l4HSgJG1GbQnxW/Li1N2Wa/8mZs4D6NcFseBLpMNUzs6rfrTbyYhmbkZpjwUqoyAZ
	 kZQkldn1UowGud/31d2LsuSbHH7aAJ8sLU6Uo5BFqHSu6gGEN3HX8b/CyOIPfDbFDg
	 PYi+SrFSyNmYavkXUbOqMwNXKrm/PC9h8xr5JUUQGG/Ofz9v6pbkezIpw+2iQc0DH1
	 PD5/58SE57JZFKZrFH/FFAzc+whlrSzEBdeIEjl/RHMFKmearofd74S+eUYWtpzDB3
	 TJVmi33TO4bkyk3uF0rXDYQ70icco5YvT4s7FNE3D/pDRkceSgWedoM5VsIxJpEhtK
	 sLBAFDFKHLU9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988E5C02198
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173919695361.16489.3522287146972965300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2126e00d459d30851acdb6a7a36a0baeb112f4823eadf8bd39b08cc21ffaec7
Date: Mon, 10 Feb 2025 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739196953
