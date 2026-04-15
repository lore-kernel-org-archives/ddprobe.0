Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2639239FD4
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 11:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776251254; cv=none; b=NER4QCJD8hfyb4CCQsBdPZKmO3OHuywFqha44o7CIzvlX4HxtSeT1SANmyD5xvibwh9LRheqyanpNObhxxy2AI2GDVGVHN9LZ4+122Ykp8+ERYM2jtZHe14pQU74X5aos/Q12MdTFds9A5kutD2CdAIi0MhWqxdZuUBSl2Wlsxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776251254; c=relaxed/simple;
	bh=dWVWBVJpUFOZ9OerjAmaZK43ykQhsAovGX5ACNko/ak=;
	h=To:Subject:From:Message-Id:Date; b=M6dIYaCM+VX0qrQMsCEqSFq99QYl1j06W1S2lxmiUGCkiTK8bIoT5osfsWedQZMeYQEylRv/QneY9sUX0+LwmvsoOCbSswaXfTbLmzgZ0AP78+DqQIvqIkvNB+sMDnZ3QNMB9zX+jiO2uX4Z/7BCEgfrNvXphnXYbVLGoM6F8NM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EpKW2Fq9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EpKW2Fq9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEA3BC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 11:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776251253;
	bh=dWVWBVJpUFOZ9OerjAmaZK43ykQhsAovGX5ACNko/ak=;
	h=To:Subject:From:Date:From;
	b=EpKW2Fq9pLzIYOwZxAIiA9oe4sw1V3QFu30aXthpJMjGmSFJ5C4u9xcijSUi9T3TH
	 JW1FPnwvthCZehPVj81XEJCC7chqoUMaGdPwCGSDKAq7KjSvu6Q+rt3+Q5zrBVrHTp
	 MWwPU2JfhN1/WDRrtIR7fQ3FskH2q+WFQqz+f50ckssFVwCObpIc4jMVSiclHp9ZZO
	 T0uuZ8sm5nfcyjvGR2qz5rMVCHFw1p+i1AQB8vkLJBlxQjAdB4zKBf3Yq2Bw1aJG1S
	 yfKxGEqoODDQ0KSnuPlDL63BSaD0XHbD3igXGRCBrhzYDDBhXz5MpawJLrcAwu9zKi
	 RE+mW5hkGtnHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC923F4198E
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 11:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177625125368.9508.3814322463517429537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21505f0a1c5b2928184a2932e88bd34795429a5e5121ff89d58751f873281591
Date: Wed, 15 Apr 2026 11:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776251253
