Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E56D251031
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709885897; cv=none; b=ffig2fFM2SGeExdcqZbkxbpvE9QM3WIdcXuOGmv+ih2eO5sysirNteqBCxuWGYiYp2b78lMpiyd8ksvY967YwvVSJ0/JmLWRkWLcg83aDjfmDVk3+4mgiOYzDdFMmVctaUl5ldJPRW7g3l5CHGoR+e0lRLwIZ5Bdr/y94HqtaBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709885897; c=relaxed/simple;
	bh=vSLInltVQvKKKqpqq2t2P7l0u1Xae5Ix6iF3zsKEz/Q=;
	h=To:Subject:From:Message-Id:Date; b=ECQzwSkc3d63bFtCpJobz0HpvdAvHFfZ0asAXYSC/ldX7BYCoYx/dJGYht7KU4fdx3P8fDe7BeWtg3kEKi7WX6MSjWTy0VxphCqJlTEDMqFH0/XIrukT0GgoxPieShF9StFKrklRHXdwOxDnsb9ZJ3GQk3wBvm67m0yAl/Jkj/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HJoLiVrq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HJoLiVrq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 769BAC43390
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709885896;
	bh=vSLInltVQvKKKqpqq2t2P7l0u1Xae5Ix6iF3zsKEz/Q=;
	h=To:Subject:From:Date:From;
	b=HJoLiVrqHaQOz/4S4QumOdCNckMhAWEhsJ5hBMj1MzaPIwiepd4hCGFNY6SXU9oR4
	 ZA8yB29QkYxgza1K8UgRHmdqJsvXAIlAb5rfh9GwxXC1sm6ZV5P0gL/0LgT33qkw5n
	 K6m69LQq13196PGO3FkaXUMKBpc4vthvNzLSMa4lY5WEbG8NF5ccO3qXtB8GQPkp+j
	 /JlFsMoD1+sYLRiQqMBU60466iJUIoH5Whtctk3eZpEPocE0jpHV6uIvP4h3JBMdK0
	 j6Oy/T0237usMQfbiFwz4cGbjgFDGQXafyqbYv4a3DgSzNzYRDM7n/iUl9I8cICV7V
	 amY1o9bhw0FFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DAC7C54E4A
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170988589637.6157.16519872562647670424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11aa841f21defc4505e417ccf4643c072dd1bf5715dfb733110529649d4dbed6
Date: Fri, 08 Mar 2024 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709885896
