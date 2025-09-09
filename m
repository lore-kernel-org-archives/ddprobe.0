Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30BC12550CA
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757398794; cv=none; b=N4ZW2npdgcuMWafMsh1oKVJSmQrE5S47BGx0pJf0nvjY8C1SI8XN16ge5Jmfo4dcEEqt6eqyyjp0whycnWV5FuHnNZCIj8vz2ki7HPuTXxZy5n18ijb+LJk5mvcN4wEzdLbOUJUU1pGd0a6S7yl+K0RkJJ/+w6ikl6Wl5ETJBGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757398794; c=relaxed/simple;
	bh=AHRHApanVFzOqZjmEKWjWPEaXGHHrz0LWn2ruPG2orw=;
	h=To:Subject:From:Message-Id:Date; b=fLhl2iQFhvDNG01JtL6mlifWHxNVafjWsXUWZIBqupHuBP++s5qSC2+Sb13Fu3H+HBm8L/lVvuYavZxpB68HujOtftuB5z4EQuZt64wY/FQDlk7CAD2bOf1wMql7yXOfmoLCgAHg8tWlfPOdooLGbHMyfpp1/AJJvlQH8YI1DsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O0N+QbTo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O0N+QbTo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E6FC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757398793;
	bh=AHRHApanVFzOqZjmEKWjWPEaXGHHrz0LWn2ruPG2orw=;
	h=To:Subject:From:Date:From;
	b=O0N+QbToB51Y13ODpTZt4iIisv3TJr6qyxqjJ1hmzEEdMw9AD1NCcpcpAsiRE5Fz2
	 ldX+gkw/Xb6k4wuebzFWMQIwCxMXcIkZiTTKKsefBCr1bSmg7W+kO8i1hgplvKYAxw
	 Nbhfo0cW6wuUNaDdg82RyWWASIzmcRco56WqCS1V/3p+i3QvtEXj8e1CIkLpMedXk/
	 DTUc43WNF7tvul3O2gU0XImEMuB2HJciOoEjbcci7P5gxZuY+QuTX50vbkcLnVaRh9
	 Hd5QKPsWPCByad3irG9dx5k3JxJvwybZ5kax8PGgloSxgw4LLxbmZQfBhyxji4MKzY
	 s+j32/5yA3XkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F418CAC585
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175739879357.16078.1401771426464551702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44362f8f8d0d8899b19dc13c85e93a4bca78dd4bc68528dd10efc04aee3fc619
Date: Tue, 09 Sep 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757398793
