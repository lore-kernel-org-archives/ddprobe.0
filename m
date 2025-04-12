Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F5C33F6
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744442994; cv=none; b=PYkmFFQ1RwXe0paxYjatg/TZB8+v2/HZ+Aka1FKV4vk6G4Ar0mcDoBHRW1K8yY/GqD1wDBhggr6UDTtXsGNoNKLfYuf1bUKFmRAmhCjkfSrrh/JA5nr9O1uxtpxXai2fYAVjmgblooWBjbSHEWb//R8X8uo4dvVRGjrspZfNeGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744442994; c=relaxed/simple;
	bh=qHbRxV7A4pOjjSiGfGdxQQ9hGftQUZq2ugeJvhiDzg0=;
	h=To:Subject:From:Message-Id:Date; b=JVSKz9RlBfXv+oICvn0m3V0BLao2bVIE0NlnZSdOc8PNQfceRnNI+lYGZ1yirKseEFU1zZL46fe7/3GlBGwYCNeel9uJ4ZFD3/kXw/ycVAf9EveRYXbSnBwmHpM17drTotFDB0AkOViJByP6w9AkU7zEZ66XSWFYaJo9tbH1pCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZFRx3/yg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZFRx3/yg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC040C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744442993;
	bh=qHbRxV7A4pOjjSiGfGdxQQ9hGftQUZq2ugeJvhiDzg0=;
	h=To:Subject:From:Date:From;
	b=ZFRx3/ygnFzDbffRtMx4ClTM0EbXKnXu97LCI72kbLF0WeoZmTr/3dWwXGYMBBqED
	 CV9PUMsJztmgWdT9O0YzWtXnfiGu9D67GEl3tZDngn0G+soTVDz6/E9QGBv8wJmxJD
	 o8OMhG9rSlTSMNJVulUixuFjCL6yDHWlUm28l6mO98E5uyJ/KhuEqcaqr/N6qyDeGj
	 D2oEsQuTqhk7WeQY3W47851vk2jXr3VGMR/Bv6mcZfbfUAnQSnWkGkhYS7E2lMviXt
	 deJm0jspSWopF9UwYIGSVrHSDWvwdTeCu9//zWi6iMFT84bSO9isHAZHGhc9iTjKY3
	 ked4upxBm40mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923B5C369B1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174444299359.1987.7664247922584290115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0f41519adc7acc53f213cebb34099759922a39893281f805047bdecbf87e523
Date: Sat, 12 Apr 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744442993
