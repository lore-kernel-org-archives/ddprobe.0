Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0907A82495
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 11:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718795363; cv=none; b=gkj2BrAah9MRz2QmKvoVQwlbSwk08ySlYRhwCfKIWaKTiMKmoe2yK9bv3UKuQ8PyxXLB9LbYmnR/5GkXvuZUm8T0O73JQy1HoeVfXvhOx2P2WAdZNWfoZ5QIV31cmvBLD2J/O5E6A6TH1jdFkcE1I3cPcVr6/nYV3aw5tSjtBa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718795363; c=relaxed/simple;
	bh=K9kUSKRcn1J7dRh8I/A3+mmPhWpVB1L8WuAvyYiFgIs=;
	h=To:Subject:From:Message-Id:Date; b=YDgnkvAg4WBGqKHX2IL77IgHz4agTKAqcG6+5VMQoBfq4ZLZpHCAsOR/PPQlIxDh1npG0O7VsoKPgP64g1FLBzA5jQcF4RWSCGktqKzNUx6l2sM1LiXYtNTj8BF+btl1vDL0O+0QW+ufz7ov/BZlIgA+PuIBovNrmBHHXcnv+GE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bm3r03Js; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bm3r03Js"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3AC6C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 11:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718795362;
	bh=K9kUSKRcn1J7dRh8I/A3+mmPhWpVB1L8WuAvyYiFgIs=;
	h=To:Subject:From:Date:From;
	b=Bm3r03JsMZQQ4UqxChSa8RSAnR0LDaxpq6Iay6wDXqDZLuQ+ur+qsJpy9pbR28xT7
	 EtCyPcVXK0tvSNrWxUsMrSxw0O7V3LMIJALWtDbfn5YK1D5gsENBKrWmK5NswueVX7
	 iXtu3jpS/tb3qNqzdpLD8P2+RUvOUUZ3gP+xGv4xFdCG9UeMeYryufr86R3FObJ5b0
	 wGna5zZeSW63Ry52VifWQVZlD76jQCbea8PB2P/2uCSdTycgXiA/bvChBJUrNbv9DD
	 0TJr9Rrcz8hS7FPyF0VYd1N+XOnsZJjzF35E3wPme8t4Bm6WJjBtm8LpgfCxXZ03eQ
	 /ofLkM9oNJJMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE2B5C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 11:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171879536276.2904.2894034490983995797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e02a3be4b814c1660aa6ed36a7406efb86ee5d5777292f21d8c4e0ac2190bbf
Date: Wed, 19 Jun 2024 11:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718795362
