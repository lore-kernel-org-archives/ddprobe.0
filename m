Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF8C4C81
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758818395; cv=none; b=ffNV62ECzaSZK9bmQB0CT9NuZxQt6Tjn/Pjc5Xr94acM/dWb6M6ThaKn0EebULVlYFOwrkkoNelmakiWooQlVh/7Lbb+dVHnxXPBaChLQkiT65HJt4gzJWvGbGV6ytPWbVN6mUG+WVsAV2AUb6gslvbePsSHVlf6tfMsDQoaOiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758818395; c=relaxed/simple;
	bh=BoS+N9CtRCWnqbYGQ2+XmMU4LRdQqx4up0jDMGq7eBg=;
	h=To:Subject:From:Message-Id:Date; b=gkb38lNIddputh5xbEzjtjJOeY8BFFgY6GNlQyQagtCA8oZEenxu8L5t4spXdyQ1M8p9eHemJnzWn+iCM5HAUe5vM/ja3WDbukDUBRsOh5eCztS/SQOlDxiUvwdgrwBYXFRLlPQgBhfB7zWHPWvsucvxrjdMEzpkS8TFkjVjliw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lsr0x4jp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lsr0x4jp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8FB8C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758818393;
	bh=BoS+N9CtRCWnqbYGQ2+XmMU4LRdQqx4up0jDMGq7eBg=;
	h=To:Subject:From:Date:From;
	b=Lsr0x4jpW8TQl9HZjH243koPdaI7YJHsJ/Wb4SmJgXyZqkDRhTNfXpKmg4jlAGWRl
	 VGHx1TZnXkZipbpSS/Tkp/VLxdKR/6S0oghsTWoqJNLgnaTWNDIqAsmri8pFfWI9q0
	 n2OnadHZg2vkURZIMhhPF2T7C4coWgBtKENzrO0DWgtfDbunw+IQhjfOC8AzJ9+G0u
	 vj0LXx5LK58aRmNO51RVs07Xoq8I3qkblqlo7y8eBz2ZfeDOU75pq6hXrDylr9Nsxk
	 hGd4eZQeE1HSwmw772hmXBH+GrXcRIpohcMDsulpJ9dFTnei7Llpniam9kAhi+0p/E
	 wERNK/jboz6vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FAFCCAC5B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175881839362.1942.631881006707956484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 069ef0adb4fd24daef688fbe05ba3365476521823704f5a270aefc00a7b6aed5
Date: Thu, 25 Sep 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758818393
