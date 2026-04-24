Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2076A382294
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 08:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777018054; cv=none; b=nyNM1WvxIPLaZErh2P8K0y/y3wGcv8hzM3HgPmx5Bdsll/xTq3qOlb0XS+f56AuAA1PwvKWJs5V/nQzXqTYWjuln0ozAhYXFBf/BgVmkMQiJ0dT0NN3+G13Y+blf0Yj/cH5eHyA0JQ4Z3oHNBBWVP3wBe2/gYvI8HcRvha5gKtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777018054; c=relaxed/simple;
	bh=sW9q/NgAvB5aa+ttzJTxFNgEwlESsHL7DttlL961vxw=;
	h=To:Subject:From:Message-Id:Date; b=tqVg/lSKskJ1qfnCfnkMLIUwAjgOcxNaR25/zLBPey1HRUWnOuGcqyjTMlDc6GkySe0AlLVv6JFJQARjGfiIWWXBoBhS4vCzCIKQvpPHACBF6kDzt7F7k5jN3cvzdqU1BVlGaWiLzYTiEE89q/2f7btHSA5HYtMpe3dGdp3DQi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/82xv15; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/82xv15"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC7ABC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 08:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777018053;
	bh=sW9q/NgAvB5aa+ttzJTxFNgEwlESsHL7DttlL961vxw=;
	h=To:Subject:From:Date:From;
	b=r/82xv1567M7JQlRpMMfGPfWFO5ROGx+wDpetY+Q2rdCO8SIe0KykZYLE3/9pn+qv
	 NlDJ6lmfqaRxwPeH5RYxo+d4bjgS5kF/d0SbScXd5fZo6GI7mjspUcrYLz21snxxVA
	 0s8LHVpdlRyRLUetjGoDhCAkCZGQpHYB4+4mnIARKFvIJG2Xt/9zAkImnfBSz1YcZD
	 lDR7MiG4ihzzHLus2bIBJdh2tI0qwwjcvVzOQkoZsMl+H/adH2exgSo5R+UI3cyj/t
	 9eEIoNSt6nZEgacIHD2jW0+aGOhc43e4c+QnV1TQ1SWH6LFQlTdB5PlXoNLbiKxRY4
	 Sl6n1XaC9lkBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE521FB44C6
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 08:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177701805370.6067.1515363338719130280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01901f338c33cf5efcd646ccdff2a4dd096c580bc750db94dbe9ff3418a31176
Date: Fri, 24 Apr 2026 08:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777018053
