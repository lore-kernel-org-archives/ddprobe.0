Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D441433A4
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752798594; cv=none; b=gSmqI/gXoByMtt3ERy11DcAqxX2QzZV/pCWEViYET8BpDmf0Aw0qHORaAYbHvxp01nPLPAHqTVTaGQgAVYX3Q15fBJLj4X1j4/2HSo4oCbNecU9E0fLQFp4QrBJ8j0YMTL8WO+GLanX1e5pFtSAJt2SagbMM+P4gwVJcrWu9u40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752798594; c=relaxed/simple;
	bh=bnoOYDt/qlukaeH150QT6Mj+Jo9Ufr2kBx6QPsS5cRs=;
	h=To:Subject:From:Message-Id:Date; b=S/ewZQ0MMqKKfXomvVXzZu4wyX8SUGCZD0MIBLS3iI0/6bpRYEV2uiH6kwhYAFz/tQtAzEuJ9DTJpBNZOP2hacX8WRFqdm8FuCIeXjEtWS0au/XAC+0Vrj5/+5ZAYVL0OhpODHDB10EmGS0oOtEdUn+7IGMCwA12RK43Ud7rEFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=efDwFxEJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="efDwFxEJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17CAC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752798593;
	bh=bnoOYDt/qlukaeH150QT6Mj+Jo9Ufr2kBx6QPsS5cRs=;
	h=To:Subject:From:Date:From;
	b=efDwFxEJRK8DsjopD/h6BjfMWBvqxcdFFlxpgUnoaoGDNKpZ+ssx2ckgHul/e2hGo
	 TkNhelDN9mN2D0MwjLwMH1/v9e6CaPYDPw4nzQSQSlerpfOHV7DFsd/4hoMb4W/ci6
	 /8QoYDbPsol0zdEeUIPq5+EVu6oOh0m5J9DMMCZpfHvTL4kZldzKOZt8Pf2Ohk3feZ
	 BCqFtLLgnyMaWjZr5VX/VXzKRQ4469ZpW9iJll3Ijhn3q6B024sr/E3r6S9eo+SW+R
	 6GeGWyxHYzCO7C5GgFkZnxPID10P45MNUdIeLLYpWoiuEbTfpWo7VIw9JRnagTJWg1
	 uZGTg+ejQLjFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBA8C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175279859358.25126.7021341632745692764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 378636abd5324b545c395bde09bacbfc7344004b389f692de91abcdf0f25dc7b
Date: Fri, 18 Jul 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752798593
