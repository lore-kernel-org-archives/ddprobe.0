Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D5D0236A70
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759426795; cv=none; b=Dmr0dWr2pj4VLQ34CIH8WrgEOySMvSXdrvLUeXG4eoHTph3MqGxkFJaiBpoMnJFkX7gNY9wBjksDPONY4xJyG+8Wh5CwvQbv1qxGj17xX71WB3GYRXZR/Yw8Wg5/KJbn11gwsrZLQ0m/dJrcp/ySza7Z3iXgQgkOUHuhjHoMlcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759426795; c=relaxed/simple;
	bh=j2JmCUxw+VvZ/JI6Oxj+YxRxp3t5haZHfK8suW/JS9k=;
	h=To:Subject:From:Message-Id:Date; b=l04gXijDv2T1rBTGVlmB45HCoe4S3c2LsoBLzlt1izwE0bcXudSkX/hVnhutBdpus5z+gaVjhZauvPPn0wB0zUTDy3X3Ht8ERRPViHTJt6oGOlm+g9kgDBcFBTXKi+jqk1X1maZEUcMh60HWcP9distByjIh/MSfhRIseVllqdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C1kK8VYj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C1kK8VYj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDF6C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759426793;
	bh=j2JmCUxw+VvZ/JI6Oxj+YxRxp3t5haZHfK8suW/JS9k=;
	h=To:Subject:From:Date:From;
	b=C1kK8VYjMZxnLAaQSvAe7VEPuhyR/5XDTHdErhPYSyWlWVmOsRJDst9vdL3WGhDV+
	 I5+j5Fs9CtdFw8+jS3dB9BYJ1F+x62yaLtSIvj64cH/MRbjWryYuk83Otxmr0bjV/0
	 IRxuCjXdeR1Q9bHv+Djp/AOFTJLJ/EV2utcphyfjXXzmUD2WaInCFNoiZXs8nigZLT
	 yTEGAytpDenWRktyf3/0NDKOamHAz8hve++BVhdOd8T2SMOWhUkL0eDFFuOEf8rRy5
	 3Z0xCURdvatFPK+rCH/1xtK5jmelDPdru7MRvzVzFiZdWEdkoFtRiPbfbj2PWISAKv
	 mhPqkPgJn8ReA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F690CAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175942679357.10088.16164626255211176937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2c63e4ea4bce9fa0a4fee89c9a8c391edae2562112b575547aa60d1d38569de
Date: Thu, 02 Oct 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759426793
