Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27EA5137932
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758992394; cv=none; b=nM8m/p0qRuKN63ijiDkGJviv0qUHc8taCRCxpaDNkwcWUcPhSmnyIUuU3VyHDmrWezcL9Wbu81U61KJZo2awNvKorUeBxzhYKxquH28O9GIM3kmT68EMWCtpnurgkVHqYNA+406yUnGOxw758F/xNMSsd8dvOiykOz/mkiXqzIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758992394; c=relaxed/simple;
	bh=nnrXbQA0j7CsRIG+lQPZ2yPy7giPkEH2eEp/kXrMZPw=;
	h=To:Subject:From:Message-Id:Date; b=VSCVG+3cyobnxVpQNNMTj60M+m3xK17cg6aI6g3tvgqdNYSvE0yIRz1euBD/p9YmJx9oDS96xu4c4oP12A8Pg1LKwCxCrEbqJXtYU+CA6SiuAT4jgZsWXRzi+k+HGdvai2Vz2zZ9nWFEPqL/g/BBLrSmJDCmvXe9d9QiHFqcccw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qYDhkbBE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qYDhkbBE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90A4C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758992393;
	bh=nnrXbQA0j7CsRIG+lQPZ2yPy7giPkEH2eEp/kXrMZPw=;
	h=To:Subject:From:Date:From;
	b=qYDhkbBEQv2HNzLIe5ZqEnp+5jgp88KGI22Y3wS6Wqzm+yn/vWiQonergiHGbobJ8
	 HQC81ZffoMwz8gd/foeDvi3wQZBHNMbIqn982Oae8qiKrau93lap1IllQ0/VO8Gwrx
	 KXmHXK/zOdESyVhGeX+EvW8YhlJ/Uz9mQW5jjgsQDdN6Bact2bunbyXTI468kEG+RA
	 vEcNVbx9HVqrTr9Jv5vkrTqFN2PL9ZmbI6Jq1WMLb2jZJjMc9CQkrCW5dZ6tyIE/pj
	 On7krwrdGYTrKrfPpHLN8y5mp7ck2R2UxTVuCwbm6VgtdKltaSXIiUaknp/JL6Y6cN
	 VAg1Lt8R7eidg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96215CAC5B8
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175899239358.28883.6405226830139583411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 963cbfc43fdf7f949a683821b3dc0339520e7129fc25e5d6eb6d69d75b384d4c
Date: Sat, 27 Sep 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758992393
