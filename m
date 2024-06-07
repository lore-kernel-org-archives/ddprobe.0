Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC383FE4A
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 09:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717751843; cv=none; b=XjznIjarw8Vk5FB6P+O+BdMr0O4Xs3wVr1RjRlQDkSvDasM8b2DfwtYpPMUzyux4gJRT6nIFHV8SJG5+Z8G6RnsDYoC3Pv8rRVr3avhqtoCxu5l8voHSvgyE4WcE1Fvayxo5GNaF/owH0yP9Pb4HF3ckbs1+gKq862RtpKrAz4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717751843; c=relaxed/simple;
	bh=R2GWTyaVs03TVwK29FgfaU027AIJRQ6WMQ/XOR885wQ=;
	h=To:Subject:From:Message-Id:Date; b=SJPiTd15KKaYdhF6LPEIZPJ7gimwzWSkvc1B4ip7f4J70uNJBdG91Y/Oyw7dZ3uuOBvJxKs/U3zA6IvRLuNUO62FPYGzhuKanb4oMryOkuG6eoJpm+AO1n1De7Cn44miTIp3j1SXMhUuftaRiXuDc8kNyzuKfpwnA6loarTQTQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V9NXAEhJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V9NXAEhJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB6E2C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 09:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717751842;
	bh=R2GWTyaVs03TVwK29FgfaU027AIJRQ6WMQ/XOR885wQ=;
	h=To:Subject:From:Date:From;
	b=V9NXAEhJxK0P9sgxjVVZPuHWx3/BIgZ7Fah6kT8xMycvDnOzVDzl0umsHNatTla+H
	 4rb03EynUDxQfzJdS6FswDtTBjJSpy+BAPVBMYODk0KBvuBXGBg9FM1m8lC/mr9z3j
	 hW6xXXZ9CIB6V/zg+BgWNwk3qDGHaoiZfcgCqLHSaKkWGyl0fAuTzt+cWZdk3R5aFY
	 msbixdpr5NPDWnkTVmb44br2IWIZJeIshUlNrwVakqzOXhYNQy+9n8k96JAllld81A
	 n5c+1dgIFHBSBu3XHsU8sQsfmDlPKHTiD7yZUZVrK/mWhEciLk9OYWcuOvUesPPvwO
	 aidK9Dyp8cxbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C484FC27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 09:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171775184279.19494.11980574481771819730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63b49ce4527dd03ea8f66b3d098c95da7b6cb017f4e0bd2ee647786abcc9bb09
Date: Fri, 07 Jun 2024 09:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717751842
