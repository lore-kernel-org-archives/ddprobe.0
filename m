Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ADAC6EB79
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744319394; cv=none; b=u9QYgHUBcx22B4mFeQYBNpxaTq0e0ICmgHdAIsn5G0RwcGQN3x8bB+h9ym1pXJSP6I40ZNiMTWH02BeOh6VAd/Cd7+v4q2KVrAsLg6tflQJbvOuM71trKFsY304gUHDuxXRSgyhxYvelezks9ARGLiuDlEwG6A23VR46AmpBBjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744319394; c=relaxed/simple;
	bh=bg3u78N+Ej+VjHT7Kqyvz3bTV0jHvGZSb1KlaaRwh3E=;
	h=To:Subject:From:Message-Id:Date; b=n6LV2OXKIms9qqbf8Mzpa6IML2eN+INnVRyYPC0tWxCt71lkOCcS7avMIhjAPWeUxC9U5Y0Fvt2Q1y/1WL2bwNODz/5VavxPu+OvcTKLB+PtjC5Piw+izfkAamu60YemgcaJbj0BWb5GmVkXMABn0ae3ljg6aDRaEQNDxhs8G/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l72IvI6+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l72IvI6+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA40C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744319393;
	bh=bg3u78N+Ej+VjHT7Kqyvz3bTV0jHvGZSb1KlaaRwh3E=;
	h=To:Subject:From:Date:From;
	b=l72IvI6+bdOx9cIdTz7UIGVrl2A2rxftCEySDUWbO4wQT5xmDi+s1NKLchm1SISTZ
	 AR7QYmQHAIXpIAOhTOaGEyIiKaCT6Atp4ll72o5XcfZlThdXfVBCijl195Xb5YIqsS
	 KPrgaoV+kBxBXTun3Y8Y3eEEorCdXl8k9x+8UKU7HWRs6tnK3+4dRG4YgKDGex7n4m
	 Vvg8YvSh+idoBbMD5yYJqEENrauP7I1aV09iW1Zysz4/ZXvV3OVeyOMJZRfcREu9xR
	 W0eucFd/Yfd3/+WDVKfKqbBHl51gM43Kdp5hBRNaLouliaO+v7c7XF1jepgpq1cBsq
	 ErnPLHJrIHMpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F17C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174431939360.18222.14584793039658217056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30bba955bb460126d214683bd82a6347056ca0cd30269eb0f06193875f9e040a
Date: Thu, 10 Apr 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744319393
