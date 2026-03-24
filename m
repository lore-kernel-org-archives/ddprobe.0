Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19FA63890F2
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774321494; cv=none; b=H1Y2HcvLhHn1i11BBEjWRrSlic1lT8xNv1Q5T+S5oH6EkCE1eQ1/S3LFuiGOSIbYPh0k0CD0JoWZmWPgitEfeA9yVjnWYdUUGnFStXDrs5i6hpaTlM0QHyjO6KvJ+3APNkCG8SgMgUkY6kCwtFc1RN+ptWznW8OaAp/HSKKARAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774321494; c=relaxed/simple;
	bh=QcQvqchIj9tnFj4WnWHEL014Sb1paPuB/xSuIATSSXM=;
	h=To:Subject:From:Message-Id:Date; b=jxJwTf64M6du3bw3/3nY6AzKN2irbE0PSKX/FkJ5xPDeVGROUatZZyZRr58ZLxEVYT3I9/xGUzZnAveylRjjuOx+RQW11LUD2QyeW9Srs5Z4ACnLEQlqahicMVsKoVTEP7aCSCbJ+9McM6GMUPIDRZCvTvnqbCxMFvXhHce2c4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OjU+iBhT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OjU+iBhT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4119C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774321493;
	bh=QcQvqchIj9tnFj4WnWHEL014Sb1paPuB/xSuIATSSXM=;
	h=To:Subject:From:Date:From;
	b=OjU+iBhTkrWqBDEgDPris84S5ZuAzwkbH0f8UCxuUvbD5/3jjeurSksMN+csEBG8t
	 jLufnk6Kb2Pz6ib2Rzfi74oCS9HyIHsw0hFFx0Pg1IdqvqfGBv3o8161UIwhLrMyuq
	 J0IqC9/byFx3DxJGkzxXXjNp/iy2Y0+uMOftowFHPeNCrxNq2AKTVfXWXJL6ZKAgDW
	 nByxcggmAaAVV95aNr6JcG7AjOEfsxYbgo0oSJGMOcc3YxiSGHSAuhxpAGBsuanWX9
	 QmhaYZlQViDsTtqnadKIQZ/A+RpfqMWMt9/G/xnvWMKZwgI/F02Ifi9US6rFggJFx4
	 AvrbQgKDRXXRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C13F532C7
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177432149359.15884.3197432018722304345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 136decf086b24080c8871476070dffe7c0168d11bb890ad0964698f60872d675
Date: Tue, 24 Mar 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774321493
