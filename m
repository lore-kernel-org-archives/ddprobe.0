Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A52AF4FA
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732348554; cv=none; b=VMaaarm0yHEU1WSEIMzw8XP3VtSCGyN+ovNfytHYjABGAJDhjufSf4O7WTtvCnEJBZZ0ZBIKbgxw26OxwRfUuRYlut04csWY2QHildT8Lmy9XpzUzkhIfoZsxD1j/C8Q5zKsNfOVOuDsVLcvy6e8Q64DKpy5d/89uDGn690XiAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732348554; c=relaxed/simple;
	bh=/u0HTYFOgdmYdrGh0zp9zRXe2p0dUPU1oKMUGP/iyFc=;
	h=To:Subject:From:Message-Id:Date; b=RFqvN0R5frYnNxy7p5wF8ctyQpgKpB0nzs9/P29K8GGh3mXfHGFqWm6puvQAyWOhh/OAlXb1MF+ZHurVcZno1lR+pKLcWpVg2A/zZSdvIvdUedHt00wTtwUqAgEFnc7CBGgWcZxhbWelTtpzOXbsnhGdw9f5iJHP2qQN3KBKIQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cl1+ArrN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cl1+ArrN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE277C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732348553;
	bh=/u0HTYFOgdmYdrGh0zp9zRXe2p0dUPU1oKMUGP/iyFc=;
	h=To:Subject:From:Date:From;
	b=Cl1+ArrN4B5xV7hiaf4DZkhgmYsEyBYC5AiiHXbtaRIF5Ke29UY0wCVOH7xk59osl
	 CKpVS7J2ojEhEVCwScX7Qf0X0u+/MCj9+nRscJ1TmwMn4DmuPIv2x5CMKCqA812oU1
	 IzyAmnOgcbExwVkSxbF+atLNbIDzZsIrPcGFlAn4GhQlY3TSiuJvNTSBk4JfooAxG0
	 S6vlLC8sZ7c+riXvhcso7irIf782o3ORXm+wFHCqjKQDRyKD4ADswbxSp6UJUl9t0s
	 s/L8TRHOxt93rIpnYBsha6q1SSGqmkS7UgZHXGyGIW0fcJSYwiib1Z54B3p3d0RhfR
	 GuMnlNSgFmqZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A4BE6ADE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173234855360.8080.7848491037643690084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3984d95036cb5df05fce357faacf8c5cc55fc821a826e1eec52481b182ae8372
Date: Sat, 23 Nov 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732348553
