Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF9014D43D
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 04:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739767734; cv=none; b=exe6jX3CPK2BxvO0uarkjQ+owATpVV/mkJ/WdxLWPbFWpES+O0eYTjYCmq9FGZXWdTBKt70CZrQSzlNcvlexSQm9xugcH9nn85sGXZlzsKclJqZanoSTuFfP4qIc/D7XEGNj5UskvogeqO8TwE5IuuFjDfvZFs/uDTteVVmgYFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739767734; c=relaxed/simple;
	bh=HgsxF4UyemtiXGzLU0c84Bv2MxdZm6E5aZUHopy2BeA=;
	h=To:Subject:From:Message-Id:Date; b=bo7eVL3+1z8QL8qVkXLbzbs14aaN/vqhiiZj/+/D6szSsHcyTOqUR4TN5/lXbK4QxE9g8ro0L/zBsUl/pg2Fmm6/VygN4KlwfVBKBt07ZcXJEmrA8V7K7doKhWv18DHe63UkZszjKnUbnAgh9Z7EIzHOYMGibL5k0da9V7Mhddw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rgl+lw/8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rgl+lw/8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98ABC4CED1
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 04:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739767733;
	bh=HgsxF4UyemtiXGzLU0c84Bv2MxdZm6E5aZUHopy2BeA=;
	h=To:Subject:From:Date:From;
	b=Rgl+lw/8dekfXJiEtOcQBR1lScCf7bLzSsn/pIr7dXQaKCg/YpaeqJ2apt8s8zp5u
	 txDVxGGsF6Rh5L9/JbwbpyZwnHB8kYSnq3haYEtzIi+/bRDG5bo5aNIBVwxT0oKQMW
	 uRIFQLN/KX13YTe0qz4mW6TiQIURqc/J5ZFKy2hME+rpWxH9HA7HCWyFZAcNKU4zM+
	 BF28Tu3oBUitfKyh83OBe734SGDs+6VbiCtExZdcfrGQOeokA/VmIH2ERO4Eu1eKHy
	 QHiqq+q8LmhM8dKyFQ0uczQlK94SFq1TVHpvMr1mdNJz7EY/GyqI8AGQdYQmhNZku/
	 KeGunPW9H+RWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9470AC021A4
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 04:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173976773358.12860.9061525107199085191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 477dae7ec2a93e145c397ff86ca47c650cc2d533d756861e62cbcfaf2fecfe91
Date: Mon, 17 Feb 2025 04:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739767733
