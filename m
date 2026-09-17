Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77B86346766
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789649434; cv=none; b=mKSfVa1rE2HByGUjvU4+AHjYkt6yOG443STYbST7aNn6rUtyzaKv52Up1c0eyhGVDtbOGD9wDt9wc32mZ7QoC24kd3rYTA9bVRurc3H8GidE7TK6rl9w8hG6riiP+PZgevak/AqJOs0lFuCMY6k6paDvszWbn2Ad9BmMVUFDQrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789649434; c=relaxed/simple;
	bh=WVCx4E/gom2GqHJOjypCtSfjpPs/juzCYZXqKoWLZjA=;
	h=To:Subject:From:Message-Id:Date; b=ihb65eRFfgo43zS9MaYN76ch6esiVr+8eczlbPUZrc5uQSHkHxwJ5u3qLgMoHUNMHLjJ1VBr7keO+Wtg454xZAVg7mWtx2lgJWOIx9/GkaiwlE6xyb4LJ/4+oUfOTJn65Q8RbYGvfcWfO2vDuPm2bOpvymJya2Zcff2wo+y7UDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pJRfT+wv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pJRfT+wv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B67C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789649433;
	bh=WVCx4E/gom2GqHJOjypCtSfjpPs/juzCYZXqKoWLZjA=;
	h=To:Subject:From:Date:From;
	b=pJRfT+wve/CAV5By0thoiWQDyMYcgcYEiE8dsWPLUF7ndzcD+2+Fp20MXNAzybJ66
	 mJD9rWcl8DWltPRUgP1RHvn8tjMSw90WqRqrU7FJ9D/9vvb7BDVlh7Vj6NzE9Z7SwD
	 77ITdrRKNDu7E2mrvOQFWIRqBBHGyqqfHDtEcZV91Eo21xVulm5bkaiwCkFnp6YkJe
	 ZYZR5RcQhK6Qaxxiayv7Vr+VDHejD3Cppgw/hK6LeXK85RRNfa9EkHxxeLpOKHt7ti
	 I3HE/35q9e5u3Sh+DrRL7v0L8bhK8EEDuPnJ/rPXrmqcDkNYUf54+PaCyf/hTGZPXn
	 GD2XAhSaAGNYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF944C88E72
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178964943371.28546.18005029479256943358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0d3038d1913621222f4c03671496e710f483e1cd936b7efe33212e83881affa
Date: Thu, 17 Sep 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789649433
