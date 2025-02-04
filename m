Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F14625A655
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738649754; cv=none; b=F3jbp4efjRsvFzfVdzw3dZbyoLnD3O5ocAQ+99KR/jYeikql+/0/hli+S4/HnWt5V3XehDocJG7yFMI1r9d3hdMD7DKucgWHiRGssQjsAm8n69f/Yt4uRQ3tH5gNVk4WBD5ciA1toRr9jqvKVBsGQWYtlQPLKlTMlUiA/uupdVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738649754; c=relaxed/simple;
	bh=fIUCy4YjD0T3b6GFwPf5dvJJBtlHdHPO6QpxPZvo828=;
	h=To:Subject:From:Message-Id:Date; b=B7RvdAiTOtleMLVUXlY8Krw53Fsk1wXQJJkQ7C4vCxnzrTqU3O7lwtXTlnzFnDb3mU4bcnzf8kubd6zhpxOBrAyNU8so6CzMslViZNDrJKdy92yhY4sFbjAae7twXPAzRVu51LNcQbhyNUIu3aqhbRXpUQQKzEvkrUW49m7PmrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oNHa5djU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oNHa5djU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6F9C4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738649753;
	bh=fIUCy4YjD0T3b6GFwPf5dvJJBtlHdHPO6QpxPZvo828=;
	h=To:Subject:From:Date:From;
	b=oNHa5djU52i7M6hbqGBgh/m09nAeRjsBzazmQ9X2yJuTIxGudJHFXOJiTABu22OX6
	 kcFU0+oNAR2Z1C9A1EQdkkIX2fCHfsxy7s/lfUHuzELKik5vL4BnsWGC5xjV/hIjJk
	 52917IRL9btOK1Ga8qxIeni9aZrjoS54aPNHLteFf0QmQd7yXjZfztnLWsZfbqIT5G
	 y2Om0f6zK77lYx1G1oyl6Te/FAmf9T8vbgUxD1SluRmLXn1euFCXJIQYoZMWUEJU1I
	 wmLydRfs16jar1cpFUjG5exuDZcFRH3VQEFJQMoTNuQLdOKVSPstNJQDKpcqSNy7mM
	 IIvpVrcR/wRug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940F4C0218F
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173864975359.7075.12577758719604545152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00c54a5e3e29de5e0aa1694418cc5b783e8e34e5df267f4642294a9ff7e62a09
Date: Tue, 04 Feb 2025 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738649753
