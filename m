Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0E2284B26
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766034234; cv=none; b=fmBQDpzhlOk9+OB9/+buMMU+qK+kPTOhwXzfCg3sItIy1xyPZ2UssZIdk3lUIEYiJ4e7wMA/U7ZHTzZKaG/fcgzzEebaMf1rzZSviSnbCB9bBFCbFiIDRkUlBnPlKzMhcfuUkdaurxMntLyobg/bFp2yiuZQC/Sk564RUPtdUlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766034234; c=relaxed/simple;
	bh=DUBUCNLZyDo/sr73AYpTYu9mgRMSI4Ct4F+x3MEoDB4=;
	h=To:Subject:From:Message-Id:Date; b=PV5ytkW7trSIznlR47ezsPyDI1oKqUZXwtAv4e1AtxjtxWF8jqHBp2YLH0Lap1nsg06tb+121HdfWH9hXhH/hajQ9Tx+VjKaRvUcIeOGSU4vdaXy5NXE5kwPGNaf2PdBpvxj0NVhZAsr/Iy7CqwJl0J2+QIyezSsuQ/HmHUT3/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l+4j9o8G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l+4j9o8G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98F81C19421
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766034233;
	bh=DUBUCNLZyDo/sr73AYpTYu9mgRMSI4Ct4F+x3MEoDB4=;
	h=To:Subject:From:Date:From;
	b=l+4j9o8GHbZYmv9THYcTQ5Pcgo3dzhp/ptaEvrTGwiV4sAPLcrJ6Xbm4R+mcA35VF
	 3kXfrmQU4mQlfjdJjxm+OezLrQDRy52lBeJGX+QAkv+OqZmAE2JnEMFVDMWJTn3jw1
	 E833cW5RLf6IKvz/WM+Kq1B58P22qP+52P6Mi97ysUjrsoi3m5IHtH0WOrSQf4KJIi
	 ZIC3bw0So3Or3lLlhlgGWFNfkaxV2sOagHnEphk9ZbJm8wDDEGNWS1QVR8zxA9d1jM
	 UQJL+hpUTi9Jn5TCUU5oEzJsAVu/KiVnUdAXD+GquDjNSBsQ+m5uLZj5evf7ykXJbg
	 Swpf8b2iYq67A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90206D68BD8
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176603423358.6610.681364497282805878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7964004c437feafd5bf20434097986e93fe30d810c732f7591c66ae4bf2bf978
Date: Thu, 18 Dec 2025 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766034233
