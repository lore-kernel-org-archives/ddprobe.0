Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E16502F99B8
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774776894; cv=none; b=fYzxSInolfuaGret5MnXLujuqj3FmxBW1YSkAJNVbN4pULkU1UXZvMMNt5PjdQ0R2ehDnsj4v+EvvfcOsy1Eo9nPRRcCccf3Z5FcU2+VUdkaVVrDT2YyXN2Zfhz19tob76s1AZt6Wzsr19EjqojsKX7zyjwoyiUt6OUV8GqbHq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774776894; c=relaxed/simple;
	bh=Ej4O90M2QdRlSoqtB/dgMnYUq+R1LPPpebCE41JiWBM=;
	h=To:Subject:From:Message-Id:Date; b=ToCVEaSY29V/5mkFmBNRtJxFBKX75HZ4kbG7KJIDQmA9i5W8L6Wv1dg8wxaQ1AHX3H4yUM31NMfGpU8SY0mXC0zTS7sTiWyK89ZfdXSE8K2a3XYO3NeVQ5bWkLXzlIleKXkP3eBA72vpqEGArCxiouUFs16aMhNesGNnM/4uREc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NKfSP4rJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NKfSP4rJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15F6C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774776893;
	bh=Ej4O90M2QdRlSoqtB/dgMnYUq+R1LPPpebCE41JiWBM=;
	h=To:Subject:From:Date:From;
	b=NKfSP4rJLdat8IovZ5YIYIPn8XGwDULWuBbI2+nCZLTE3hgExrnG02ceD3YwXh1V5
	 6NfM7cVOkaZ70+L3b49sw/Gip0Q4gu5beGg4cJ8V9ozgZemVuqd/MyeY0HUtxXfluN
	 aqiqExZdCCbfQiopPf4r9NKR/JJbKobQqeSK3oTALZa2j9rPNW8fru9WIyIjZEgHvu
	 aKUYkdH7hb4MtG+5vfz5umN4He5Qs1l52uDDrJ9ArU9qVp4pLVh0oIXBO2J/7lgG53
	 z83bqPNqqRe0ZoJS/VZXphz+6q8TMd3fVEmNSxsSCx91GwFlPO9xxEjphy4Akmf0Xt
	 HrDXjaEInMSAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BF3F3D5FC
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177477689358.6113.4207389482375140802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f1ea34e1217ec87c9109c076350e3548870e9a56f79d4902cb05662651747e7
Date: Sun, 29 Mar 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774776893
