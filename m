Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FFDA25F974
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 10:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740740334; cv=none; b=jCk+ZWR994MAfofz4ITBUt47vjkDP5TkXrimrzrHdeN0FaGegygy0tXq3y6hpDnHdZ6xnWfeD2tX/OiCD3JJ6CPo/UmIdYkR0Jzqwy9piGFNQg+FuCDDGtT1uKxe+NEiWE6yLNzRHUIVkw2UmnR+Db3uDjvLHrdxNMLT54IN/UY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740740334; c=relaxed/simple;
	bh=G2yPB2ZowECzpje8E4vVE4nLst/mhjkOjSh9QC47tDk=;
	h=To:Subject:From:Message-Id:Date; b=GGYUuPpyIIrF+VhvFcci9yFAKraEu/Q++fnB+zQO4rnfU+rBXPLa0XmKp0Vn+nEjMOhASmBzpGcEX4+Wb9N+jgKSXj1mD1/a37f4HLFdPyZN24JUxf5qVffogMDeq/m75nMIFo3oBzIWR14+OHKZEOJRGB/DHQVMmmH59NlxJVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=biwdWxKM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="biwdWxKM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B80C4C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 10:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740740333;
	bh=G2yPB2ZowECzpje8E4vVE4nLst/mhjkOjSh9QC47tDk=;
	h=To:Subject:From:Date:From;
	b=biwdWxKMNpOJ9po47vLbGbIPKhNraIDckzix70gcHgu6Qld88s8uyaS3o5NpZDKtc
	 W6y0x1kH4j+rJbFm4OEHiuotMrCJB9tU/8tUmAV1TSUCSR8gEd04EiHmrK8bLOdCZR
	 6CAdkLSR7hS9DMzXTAqL1pbrBQ+aaJJ+H8zuSIB6ceN3ZNFDC5twHQ0NdEAJHaxOze
	 wCn6meWIUrev1kKYiz3cJRhKbD9XOz0z44ORf2Jd32QWZsEBJ8/txEQKgWIXwS7rHN
	 9TwFPhd7rgDK/BtnfDlCPu/SPLMlKgT7XmFKrG9zFUCatvrZkIQk0eyfFwHdEdsCYa
	 u/qsBfHh1yhfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4361C282C5
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 10:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174074033365.24640.8766747896001667340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deecd09f5fa53430e1fdd90e0e241d7563bf35872a64709134973caed6e54951
Date: Fri, 28 Feb 2025 10:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740740333
