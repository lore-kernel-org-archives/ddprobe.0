Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306532AEE1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 03:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764644574; cv=none; b=AWC+79N6yUVlX9X+8iT+LVyA+tpRi2Uz1NsdOKCv5doIo5tcwPCzGn0ZJcMV1oWwlpXuPMpAYQocecacBFKcYFNTiy7GZcDCJCy03q7jLC7eTMgJV8zC3UTJ7pRnOIwSShIpdGg3fE2N1+bX6GEVSVDxGh/4J6CAh9YcAzS90Nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764644574; c=relaxed/simple;
	bh=NWp+khXlgK0FXAGJWrGEeJd3WGaBYLc+BWQZNtYKLy4=;
	h=To:Subject:From:Message-Id:Date; b=gAzCDBVH+w0jzwSh1hwxZaXu3dDE/a2aC3F+MTut6vYgIQU5wYrez03Bgnlhp0vN2IiUf1P423QqRNrV0M3IsoSA9ub3boDv8SJMi/A7WcvNc6CFWg2vpPU9z65Th0DZ/ZRrRn0e9DSUpGJYnq6bG7rsA3U2zB8ciGqBAzL7ae8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zr28OmlX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zr28OmlX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC460C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 03:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764644573;
	bh=NWp+khXlgK0FXAGJWrGEeJd3WGaBYLc+BWQZNtYKLy4=;
	h=To:Subject:From:Date:From;
	b=Zr28OmlXlQu/ARV/D2GWsaaYeE9HU5hE+oUlbVIfdcT1ZNKLIo3koON/0hAZrRqdM
	 25RJ6RLGCorvK+C3cqutLAN62m6/RiB3wgh9ttBNU1BBN3fDzovrfToxPs+mua0ZK2
	 X2kUenZI0Q5Xdh+Ia690EXSS/gH8r3mYyNyrPi5xYGQ3hGx6uCGGdwtx+lWnIYucrs
	 igD5DHh+ezPxeXuZL7r1pPxacz59oNH5Hcx/4vehIcwrjKWv4YcpenSb9vn+KTrgN4
	 YjxWaylM7A/UkUZF+ae7Uqvl5daPqCi86i+ldMRVdmKuxvUA7b/Funk9LLs9el8+7D
	 8HSpMDDeKgUPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C26D116F1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 03:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176464457358.9838.233343769465789597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70af92a58de9572844e6e270edf76b93fba9d8b0b7b70394809ea4d06973da72
Date: Tue, 02 Dec 2025 03:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764644573
