Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A02BC3B7754
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 22:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782428254; cv=none; b=pDBYV0GS2r0psnwGC2c9esorAOb6ObZGFwxFOmsmfoWXILHZL6NPg8OEubbKlW2sBTQbSNGELmjBbm9f6+n96vFaqSgTVaQlDEzRmXzZGWPaTj3UTgZCAq6KfNqDL1OomGB/9LFC39+BoBxhgKd8mc6tedMfJsgYq4aVBtqkpPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782428254; c=relaxed/simple;
	bh=ud8r2pxloY6fsNoGS62jMJAKVa9wdH4Om4xXYd/S5Qc=;
	h=To:Subject:From:Message-Id:Date; b=apwnBQeByngPrC2FHN+7mjvhFHjjHOI8PUuqtNhQDL7fph+4E2jo5GIsdVbXjBz3x+wD7A0iZvDv/n87cvpwSaqIvQ9ZZ5x1ZCjoaxbE/vdBfsi9BNTnA7oIAt36ImceU51H+TaRgFvBAo9aYfj9arH0nDKy9HMxjEge2xcXybU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bk2bq90I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bk2bq90I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 35701C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 22:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782428254;
	bh=ud8r2pxloY6fsNoGS62jMJAKVa9wdH4Om4xXYd/S5Qc=;
	h=To:Subject:From:Date:From;
	b=Bk2bq90ITMfMUH5hVWwP5dnRdmOtuatnllkVAGMnQW49uJLYFxY0cwbuOvDySjPsJ
	 PMuxO5B7X/6VGxm3kDm45RLT5eQ3JVLj76wWwd/4RbJfw3BstcaPTCazW4GdiE4W1Y
	 t3Ou2wewKGbErxELa4MoCV/m7CPn3OJDp6/G1d/6Ue3FzH4jMKC4ISQ3P7qGGZ14Oh
	 yfr+n/P6JYf4iVesEKxu4ITkBU9sK2fE2cmoSXMWaN/JrRd0pgLosZm0tfqsJuh4x0
	 BYYkwoF/v0ZZ7nNn86296wUxQ6WSq4KWnSyjyHBt4nA7bLnH6WDpYzAbvnp6dLqkT7
	 4LoiWC9xplFyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2E2CCDE00B
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 22:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178242825387.9923.11048448962752157968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fab2767ae18818926628398f4d514b8fc6443e7b62a16912a8058f6031a8e741
Date: Thu, 25 Jun 2026 22:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782428253
