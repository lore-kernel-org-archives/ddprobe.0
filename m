Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48CD92DCC0D
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748811594; cv=none; b=b5w4qeBKjHLaPdbfqbzYQW6ghG2Hy3DXjZPI93kZOnGLKnH+qZgAXMR1sOsLDHAS4lQoUbyS/P5rKQnEBVc2MO+D77I+hctQSOzTdJxhI1riylpwItclTU9aPbGJJQzjxuIPVUJPqLbyp/qCuBLKtpsoRxdYkrYkv3mSKUzKdRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748811594; c=relaxed/simple;
	bh=aWumXTd8SB9150vVXT56VfXRvWX64e3Ybl45G2vBWgc=;
	h=To:Subject:From:Message-Id:Date; b=J/To0arvOt5nu824QCsduSRvmjHwaqK/OCzgI4VQIZ6MuP9nTzeFQ2JmJ7SIZThtMP9NWxeQhXMLZHekiotHL+RrqjdVn8YsqlDVaw9bj01RrP0f58dvcTi4kp7OdMEzOrjMcPipK5EE7hJFAwG6MQi9m9u3kzbIETAH5XGycnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JEJOd0nV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JEJOd0nV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B92C9C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748811593;
	bh=aWumXTd8SB9150vVXT56VfXRvWX64e3Ybl45G2vBWgc=;
	h=To:Subject:From:Date:From;
	b=JEJOd0nVqmIbnDNKmvehSlScHSTJuUeCYc/7u6E1Z+nThMCb2d43z+ynVpnVYT7+e
	 OlNDpIXuBVoOBub5IucJhatkMdWXz40FlHHKoKQXW6O/bJoBguPvYCpGkNH3hQKEgW
	 fy0nXe1wUQmAymOc/5bmiPeVNJgG51vzl/DR8iGOZfCZdBj4u/U/+/nUzy+bpcvBvc
	 6OSF+2IxvLQxO2TteVMkBS7cspKUH5oUAIrmMZNm3SHm1B4taHRL3RF5UnubBSrq0C
	 EIMNvyPM27jQ85YtG5KEyq1S5blnlqPd+10Vyvt+nAhHaGf8KX9l/5A159GhghvEik
	 idNkqR6Vqejxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DA5DC54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174881159363.29813.6280720354079117460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6baa0512bc1b9d31c97e99f42d354a4d47146236afcd8f5ee106ebd6c37b4f8
Date: Sun, 01 Jun 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748811593
