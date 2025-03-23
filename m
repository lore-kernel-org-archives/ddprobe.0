Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BBE31FFC68
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742716794; cv=none; b=KmzqnLXyMJGGfOHFWN6OxZ0gmDO/olxghw9NqlTFsmbbGCX8ssBj5wAlECal3AnGY9TtE00pp9vx6RxXQdFTUI65kO3GxsJa0+5hCIWeVCX7phjiTnJMHywk7nFOXYyKXJoLRAYOtrqFfvZ8en6Qm97nB/+Hx3uVSdj7U+6wAnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742716794; c=relaxed/simple;
	bh=d5txWkvzDllJVPJMG+N7yN30EpIgqwks2KfDbBGDyeo=;
	h=To:Subject:From:Message-Id:Date; b=qRmPdKwH5v5LHOMxrxWjvPKI5SAX6iCG+mkAmlzdp+Ydrfzwl0oFWlkWBEpYjSn/WfEmHPAubo5VLGPvoyX/9hWTLQ/deEG9jSe+udMHWiiIoncmgJ8DLVaVd7FxG7GSy7lJW6ArVhPVnKm+T05KCgwICSRDqUqTltyZtWU9k5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pd51oj9T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pd51oj9T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6D0C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742716793;
	bh=d5txWkvzDllJVPJMG+N7yN30EpIgqwks2KfDbBGDyeo=;
	h=To:Subject:From:Date:From;
	b=Pd51oj9TUPwrNp+SVUhYyJSrjUgEPMA4qiq0YgfHogB87d+77JyRmgzm7cRVsJMK8
	 6g7sCbIZG/XT/io05BvbvKEWJuRfFdihYE4mTnZPQ0D6mHlfTPPO5GWcYaFupKvk/x
	 KjP7JFJpCK0QWXm+yS0fifMRfidcnMWGqUTGai2Ris746shDVBMPaITi6MUApU7+m+
	 TEjXDriqXyINY+exsNMw69/OCSZnd38nJWlpnTeHNLu1WVt1TepetoGUD6iQ4BsZ6+
	 ZkS5vMrnxSI9xqQCO9+5Rb7baEQxylQzOz1Ge1PVYqCEnMeZnuO2lCnoQcqx+7pgKj
	 Alw2XjsDvCq0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A95C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174271679359.4748.14655378419168364062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 126aefd6c07adad329e82287483914ecf0219e4e4479e6fdfc9e0364e0c2d483
Date: Sun, 23 Mar 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742716793
