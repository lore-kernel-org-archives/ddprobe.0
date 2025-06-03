Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3487197A76
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748969993; cv=none; b=g0zqGdCLxCO9iLbi8VbmTU1Ij0MMd6sJww74ZgrHHgihbCO6AXyqVYdfcKCLsvXeYJZgoK8jIl2bHdhRFmJNcbYlx6fT+ZcP0HlQxgmCyzOMu8RAGPs5LjUz+woVICU8iAfYECETpljm95hWRk0eNpn46oJO9s+nvHviAjcJCuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748969993; c=relaxed/simple;
	bh=RJzqJH5mzeiZW4B3gR6NwBZbEA7WssaQpAeFLEZVMrk=;
	h=To:Subject:From:Message-Id:Date; b=YnwpIRn1KC6CpyvBfLrUfAjqllvLW8x3+3kvfN0TomS6ajUOjzYAuoem8h+rRN5WceC+Df6KRq2Gzpi+j/vfoQIn0tKnJTIcu2zWcb5T62q5yAt8Kb/uXYz7uu87gDjcj7xEeXClF4gNPUTohVmmkGA4l5yvL1YZ8Pp86yjJd4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PLMpd5wl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PLMpd5wl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6921C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748969993;
	bh=RJzqJH5mzeiZW4B3gR6NwBZbEA7WssaQpAeFLEZVMrk=;
	h=To:Subject:From:Date:From;
	b=PLMpd5wldCT2rIblbyZKyXRju7MEw6WmM4wwvUgeM+fQUnCuLIBW7p/UBAQRG9obq
	 w7w91G7RvNUoAu9tLeGCyADbDTU0eEOlrdC1tRqJ5HbNshpiPZfAavsitvYLrEStR9
	 TrYlhV4o+SFD4enWlTFH6XhCuoba6ALG5aBc9rCQLSo6Ux7yU+DkKWjULpV4f5YgCp
	 Rv1WH8s5rLi1Byjp9AZuyj8kRGOsnX1qg78fFpUz0HY27si7iKGrLRu7CEXsyh9HN7
	 7h2gXVxQ4eT9fuWguGHrHPXSyGa0X45el4cnV+oi5NcnXByf+jjCoz7/n8UYCv0SGj
	 etdcYqE9PPjrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92641C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174896999357.24944.5518314340257101269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 582ebdea4ee1160356d89783bf923060a9a6c2a827fa5397a322cfd713d59cd3
Date: Tue, 03 Jun 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748969993
