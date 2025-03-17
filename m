Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE8B1F582A
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742252395; cv=none; b=mx/b+or2eHr/1Oque92KG8qNwAoXmKntvI3YjnmxZ6hdrcwA9pQNgKNc4GQwt7U9UtOZr7cotwzsLllD1NwHtjsVYhyYLqyJCIcahalNTV7lqzZqAV4SfvNhT5S+zrKqIjlvnipO7pGpmNxZTf5wJjlo37P7PNS1hPZKiMiu5M8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742252395; c=relaxed/simple;
	bh=YV3ZS2GqnIHC33ZbQJF+JxEJ520KGeEc9Slv/iF0IOw=;
	h=To:Subject:From:Message-Id:Date; b=NsroGlh8JA/4jv2/BXXiPSiEI1PQ80mDDbczaD9PSP2WEmX5NxzgnFcE3L7ILiQt8ZurOg7tRHuLO3bGDAccQRwGc/Euo06+mqw8PINrL0r7dhcp1C/Epte0EX0hLhHPG+HdYeHEkSRe5ixZ0NnGXUSoEy2rJdL38ULzwXVT+xQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sB85n91X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sB85n91X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1975C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742252393;
	bh=YV3ZS2GqnIHC33ZbQJF+JxEJ520KGeEc9Slv/iF0IOw=;
	h=To:Subject:From:Date:From;
	b=sB85n91XhKEdKnvcFRDDnykfQqWh631RHLKWD7+eVSmcLudV1ybtrpgizAZEN0a07
	 0TlrJ/lvYQj1H5HtQm8I/VB2jmdcIEuGbXbYu47tS4GB16qrH3s6BhZNA/52zeooWG
	 4ucv8YN0d+9AqpqTimT9LHBrdwRnbYS3+QRpqN/QO5gBHtrtzpU2LnWuknWQPnZZ6X
	 wAXClJSQ7SbD8waoiZH/2x9PJkpdXAiciFgp+2+s6VKKlISZ927w9CiXSc+ZFYf+6k
	 MrJZaAWrqveuodSLJ/l2if1A9qDzP2BZJXqLc3HIUPcAsg5R7ZO2mhfEjo5qAL5joA
	 GGUjldP1Ee03g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F870C282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174225239363.13910.8847163554808808797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2542adc38997a2ad120ff23d97c3d360e3cbec645e69ee36f06881559006bb2
Date: Mon, 17 Mar 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742252393
