Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339B934F48F
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 17:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782063394; cv=none; b=JTB63ULUfKtvsPBOcDVQSKYvLT4NTwakilHg0nWBHij04HEG3tUIHPWnlD6n449H9scPyz+0rMzWQsH7/NvygJL7VuiqGui1ALQqfmQCyJckYq8sOM8plV5Yts0kZLa4Ld1eYXR7z/856iBj8ngFnu1SndNz5kVum6nle1HoGdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782063394; c=relaxed/simple;
	bh=yvPQxl+VKJmjo8mh03wuXLjgKlQpev1kk2cXt1JArPc=;
	h=To:Subject:From:Message-Id:Date; b=qRPXjFfjoIS42mFuPwMkKXoKGy5WI2e09GA9SSIULtu6eYo/5OlUrcucRD1h1X1/QrBuEH/3OHFhkkps3XtoA1UUmq9LgR3lfwuGmaHCzrFavkb6+w0ygjpf0vUR0jLnT4ZUhwJrE38AFRi25Xylq2sNHHadpE/XSrjpvEZikWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O4msJ3iY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O4msJ3iY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEDECC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 17:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782063393;
	bh=yvPQxl+VKJmjo8mh03wuXLjgKlQpev1kk2cXt1JArPc=;
	h=To:Subject:From:Date:From;
	b=O4msJ3iYmkGdp8Wew352o1eEHNYgD5eF64P3dR8Mj5Ge5m1z9Tvy/iqGVdH4jz3ej
	 fdAci8ncA92dLP6RmLsc7SAZkUZQjh7kEscD2AnQ97Z+1gS8zlhSNOxrDxc7qt/F0v
	 ZG8sQhP2AtdLH8hxnLohsAkm2A2KlVhXFjwfNzwltK+VwBlZbDxlcdyeiUy/s/yuro
	 elUBFq4WxYhDc5HllakwVVuR0Mhb+edvYYB/kvxzZKgnIlLcw9thoMauLfWy7QFucT
	 wVMYMWbFxktnaRhb6Slazn7bJcb2zuJ3KUNJBQxZYGOMjxDIBpazl+Rvp49nPLtiks
	 ZDMI2XPEteUiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1BEACD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 17:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178206339369.22378.13733805131699416139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e96ea9f19d6e90d6513f0e6ad23b8e56400ad8f88547c24efae6f1e33b0fabe0
Date: Sun, 21 Jun 2026 17:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782063393
