Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 630062110F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 03:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714015883; cv=none; b=eE3BL/Opm8tt1Li1N7yovWLfphfGfsNeGudGsC6cYSdqlj0/IW2eCU0K+30lsK6WN4rpkE5QmW8joeGPz/EFbyTp/DDDv/1JnWhHYWgwL4EG0VRIc9w3MdO5NDJm13nSWLuH00/HpDgUwaDmdW70chqB9bJBd1zselzOIgA/lb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714015883; c=relaxed/simple;
	bh=00iXiUKffrCJMChCRISHSbPuEIxdSeQYR8/ZlwkJqV0=;
	h=To:Subject:From:Message-Id:Date; b=kY/bCMZwKPSZk4XP7K/0BqOxwNuhyGnVWA1KVRiyCv2Nn19mL0pg9Gi/WvnsfRLb6NxJbojG1kKFPVJxqdVIxv074YL74enUOVNLtKgK14x9I6iVgqOHYgVR+SUln2xkn1lWxS4ycYcbyWtfcrV0NDnF0KFjVZXWBF+8a34CuGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KJ0C7Rca; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KJ0C7Rca"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEE59C113CC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 03:31:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714015882;
	bh=00iXiUKffrCJMChCRISHSbPuEIxdSeQYR8/ZlwkJqV0=;
	h=To:Subject:From:Date:From;
	b=KJ0C7RcaHeC5kqsdAuC8ofH1a8mO3ZstxlenagLhA6Pl/C9o4582IqjWoX6Gt6EFw
	 bvmOokzFrzUZFdyJ6sCe7Qo8d9k8dY1xjvWvRupppI/LxzCHGMeQX25KxvYmZf4xnd
	 7s+nVA0Ux+pPoGOy5jZYmf+QxsGNoHd5RJC5ScYuyUvhk/fAseoMVcDHZEiPmPVdWf
	 RWjTfaWhXvlpmNGfwBAK+mc5nr26xxyN5R8jV6rXx81uf54H+1iqSvz/dOtzFAhc6i
	 wxW1ODrSefpPS0GxQS6RpH8nWqC2lpm3GzCQe/y5Ov3tIclAsc1a+iB1qgW+TI8NDU
	 qwfqnKNM+9A1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4D9CC4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 03:31:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171401588278.30656.6674180769047709545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 258ee12b8e7c757cf3f716a52250a2f4a5d5e6957199b892fd0e4b3ed581ee70
Date: Thu, 25 Apr 2024 03:31:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714015882
