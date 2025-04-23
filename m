Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE3C1F8743
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745398794; cv=none; b=JGjMtx+NgzgtebvSr6uGWbPgfiDRzLvzuTqENg1h4qq4jEy7/F01rA7tyllGw+plf7ZvyNNetw5Z3GjkzaA4kKyElMBG4Au6OhFEOMreJTLokADjJ+o6DwY5mYQPA2F4cBmhv++gO/m3iEl4UoS9+xoVPsznxNnEu+sIT/gPf58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745398794; c=relaxed/simple;
	bh=DaJsI3puS9kW/T6b0t9JNAUbLpqcfF9zS4bLXfrczY4=;
	h=To:Subject:From:Message-Id:Date; b=ia/mtkrz6oSIn1rcnQCE514qjN0dfvhbCxI6jt9MOH3GnvgPXQH0D4V/8fv59UES0vnsVmjyvMWHdAPl3KqIhazZx12UHn2sVDBFKkA50ZP1ZnSdO3nZmvO3cZYZzbLIdIwrYOnGaHVFAZUmPpt4KGzh/ZYnZSzmNuyATAQoPxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z7h9nWXk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z7h9nWXk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDAEC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745398793;
	bh=DaJsI3puS9kW/T6b0t9JNAUbLpqcfF9zS4bLXfrczY4=;
	h=To:Subject:From:Date:From;
	b=Z7h9nWXktXb/0Y9tMcAUKhUcZKRPIW3gAPrZqrqw9QpmzB6PGMmaQGOKfCD4P0OEy
	 wynDv6S8THb/yA7mgnGylpRv0O3NSR4MFyV7nqHA3dBHFVEddOuNzj8StIjXgOXajl
	 fU1LUpskiXzMJlCnMMCCeX0tbdQPXW1p5ZTqIAHm0GPEJyTRmvPnIxbM4Rwg6xQPv0
	 DHqjG560PoUA6geO7JquH6rm0YUVlzfFIfzYDGy3OCjBfK6z5taMNXudWx7Is7FrrB
	 VWA6O+HdEdPr6ZoPIzSicggwJvbHsxH1OOr9gfSP0eJ9D2g9sd6ju54pJ7qLmA0qHr
	 18fsDyKo9Gsaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0D6C369D3
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174539879357.18218.9904492541508512474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b674d1197c6ad34835e04a0810b91599ff43f44a06df07afaef613eb311943dc
Date: Wed, 23 Apr 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745398793
