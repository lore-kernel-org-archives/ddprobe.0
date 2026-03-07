Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 043198F5B
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 00:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772842494; cv=none; b=qztqtdGUz6o/NiR+cHk3b9AXdr/DeBBUi/IxVaGLSRgVFaiG6TNOWD2I0oL484m6VboZdCqIOcgzfsha2pQJmWaRh1z4WqOmtDGRYLwMCRK7EN1NZluXBh5eZarnCs85WeEk85aTP4U/kxiQN4iTI7CDedMq5HgMkok6Surte4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772842494; c=relaxed/simple;
	bh=v79A8UDzbcywrw2FygnMMiv1b0mYM+KC6mUn+7AK/qE=;
	h=To:Subject:From:Message-Id:Date; b=H20f/dGQ9xUpwJ/tGbf5jxGQRHsLOo+O5jvueEnW1/u4s2ophgvHmcHRS6Jijw7VrYC8vKz3zEEnMS5AFjJr/pwy4kchqla7gq9I04Rdd+p4KMqFHBDyWQVzVCAwg3suiB8jTghhkrMjhqWLQ6GxFLsBUevCRUtKIMHY2XvpAgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sKZMgV8+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sKZMgV8+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51BCC4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772842493;
	bh=v79A8UDzbcywrw2FygnMMiv1b0mYM+KC6mUn+7AK/qE=;
	h=To:Subject:From:Date:From;
	b=sKZMgV8+YBhLxlTe24yBsi3gWHlz36MKUhr4w7qpKIOWwPr+rF+oKhw2SgHkKv3c6
	 ZtIbbvmJmCnLwZwtKjz6BiAuRMBzfYOi6/Bk8z+MkY1up6xkqvtrZ/JbWazL1S6WpB
	 aD9y1A/wwOgPZvIA7hK68bKfTx9GWb99pOGNcOy7aVuSBJVYCYduRVOg1c1j/nfhH+
	 kYKgruSRgkDblJcgVV0bKA7DZDJKtI+RZrxp/6qUlg1Jaz2hSB+hPaBspKm+AOrpGd
	 OI3Y011RIhHbSeMLsWQy2uRdFveIlvUPRGwebw7ecsU5FnVC7rM4ZQtGNVr1nXkqtu
	 //mBhRMNY3w9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9FDFC9EC0
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177284249358.29220.17757077979545960022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e86e3e10d7b34f70b1e47697720734c8e3f5f774fde5b6840548b3ab1829a06e
Date: Sat, 07 Mar 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772842493
