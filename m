Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343F01A0728
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748590794; cv=none; b=MKyelGo8vau39mT0NZ2y6tIEaGKBJOAY/NnVlBtNNHUgJmGWA9zTpZS4GDv2jnAwTAdRrm3qDSxmI0L7UP28hSTj5rrLJ6Rh+JiiSCHwi8U2y9xAneghZjcaYFB3AhhuIjh878BGffCQBL3wY0ahqHZcBMdMjenRmohw7oUotPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748590794; c=relaxed/simple;
	bh=Zy3r4MqiVpdvj9UMTNqlAFy3QsaF3xkGUKaOC67EcuQ=;
	h=To:Subject:From:Message-Id:Date; b=j4ZS0IXS3FTE5gmNrD0+RFusBFRxI62iZZk+iBJhyoyrZgiDFp88QuD2k71a7bzxLdULEUEA+vll9ByHBA1y3ZtimHXde3NB5FlZlL97OW0SpMz8hvLL9x+qII+H721U0qMOH4+5cdKIsTci7HbrFQEEsMqnWbV+TQxhX0iIWfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mPUv8cml; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mPUv8cml"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40C7C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748590793;
	bh=Zy3r4MqiVpdvj9UMTNqlAFy3QsaF3xkGUKaOC67EcuQ=;
	h=To:Subject:From:Date:From;
	b=mPUv8cmlTUwpL3HhAtVB8dpenMXu+lC1qJIFYXaurkYRvCgXQwXxEsnmV0X3WoI1n
	 4Fuzp6CwYqzK9F6zf2/gwamgPsnyqbNXq9VGbXtXkNi0zwXTDvHK62sq/yGZiWB4lu
	 9ca6d8BCdRae13rGsAGqlVLw5j7s0ugTE3ynYyAJInblJX+Zejk5nGj3P5fOBRLwty
	 FKeJz3hk2B0715GaOEOcL+P8BFJPbnICBd7E6QJUsU6uPpPWgoYHedFenWigvAcxHt
	 a7F/5xpH45XsRn5+Q972wdscSR1kcTjI+ZAXs4XJ+UiEcDrqaSALY+nNryDIPyCxhn
	 b6pJzXb/hExwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8BAC3ABB2
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174859079357.13652.8743825340774050066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78975770db10d6fc0fb3ced9392b0a05e71b82942f5aa75868e323b31192799d
Date: Fri, 30 May 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748590793
