Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ECB436C0D7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 06:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772777694; cv=none; b=oYEcsWPFPWQ7zL+DkRFhiKAxnd0taDBRGT5GDNHdJNLk/PziteVXC/ozQKxr0tDOcQsogLek9YIrTkXbOIYIcVCAqvQr58txtSDhUaxvVq3qqspt4zw/02GK+1CiotyBO9biyLFSU/okGqpRvVpRwtk7/PrGhbKeLyt0OWMo5r8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772777694; c=relaxed/simple;
	bh=KNnVnza9YN7aYQC1P+0FmICxlZLF7lJ5lDZj89Gqd74=;
	h=To:Subject:From:Message-Id:Date; b=qB0B1TrfplUldcY9ggDoj12acBd2lmKwyBX63NtbaUB7N3hotkC1nNIL7vXrc+mySrLSSV7AuS19rTtln8NM0yMyjKDUxAd/RyL0IDLhjZfQljL3vJXzbT+QZuhW74PtIElm57cTcKo8QisbQmPfAOBxLH0/ImWhN/iX/sdkpqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pCVZlD7g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pCVZlD7g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B6BC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772777693;
	bh=KNnVnza9YN7aYQC1P+0FmICxlZLF7lJ5lDZj89Gqd74=;
	h=To:Subject:From:Date:From;
	b=pCVZlD7gg0HkgfOoB5/lndS0D8NjsqpUZDeKgZ7qf4PdnROBoW0tzqzK0NFWl16SQ
	 9jP1FvEhb7l8TmDNiOI/9RzuHJYuUDtxtl0AmpzlFgPkfOYubWIindfWeTYpgwiU89
	 Ja5qVO8OZofVwSCBzK80oGM47NEkZnQF4wh8i6Av1XZzo/+NcMuqkgX1Dbo46ReETR
	 2a+39S0ECfwPa2UDqfCU/hQdyyNQc5LeRXwoun4eDsJRi61xhLRj423c4gC2gfIQP0
	 YtSK1+kC0Vt7p7zh7HpB7QsOQ+OxYF51eCIwFZg/BNF7MUrzuE0NAwXMGhiYcoq3/L
	 lmpt7UkEBcPGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BEBF51403
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177277769358.7261.15401458346886666139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8a15b67bb60717ea81badfa4fff0f33d9f7a285e4382f8520260b11c3a1afa2
Date: Fri, 06 Mar 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772777693
