Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15CEE10A2C
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 07:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707980897; cv=none; b=sGfVsHgMMLc1aC66aYuTK6IVjolOyev++OpytETdfscWd/vQ4b5x4I4prd+fw/Gt/+sHSLfhglZ/jOIG1OzwOYc6CRpd3tFAraTPIamffp1Bq5iF2MzxTdiJLPGBrNd0n+9DPLqf/jg7qMCXw3D07PMJ3aGnf8EOOHrq5T+j8bI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707980897; c=relaxed/simple;
	bh=AoOmwOyEoAyRRATDtJig0K11zC+NeTwB8COKYXu7ntU=;
	h=To:Subject:From:Message-Id:Date; b=YdGqcM9vRfHq99yqci+Ia0yMcFmaEV+pLwHMk5p0sJbYtukQn6JDV3talnA1QF6n1Tp3BRNHWQg7xaJ/RYv8QEwYtvc9fSrdk8+XofHZr47zAm0EiP07DIk5/A/KvHKcYLNZxfQ0iIXMVgmjWIy0gRfd9aNCYkZASBsX7V0N6Uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QgASDjaO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QgASDjaO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E1FDC433F1
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 07:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707980896;
	bh=AoOmwOyEoAyRRATDtJig0K11zC+NeTwB8COKYXu7ntU=;
	h=To:Subject:From:Date:From;
	b=QgASDjaO0qNn6hbUfp5L6nI+2Gd1ou7Ubqout+smpFoj3wCPgaRqjlv1sVHTIvsaR
	 M5mEbrUXBNPlfaGz2EljxRPM7ud8epvN7dxBCOM4YOsJBJB2/PBiGTyjjP4EMqXmlB
	 jyMpj8wacsgXCO+WvO9dh3DEH+b/te783ZJqpPpa0l6YrfWYYexPV6Ao6US5VvfIDD
	 E/WigFIcqBh5bZNoNAUqDP+ShynnJ3oAcnrnkZP2Ou5CsOmZWDgZtn5X8Evd6Fe35p
	 QvCX2Xt3C+WjQ9pM0A/v2h1J2b//FTlCjgwCVLvVwUgPDauB0sOfXmoYgI6OOLe5kD
	 lpXt5+B8CdEgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E120C48BEB
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 07:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170798089643.24701.12057873353848785384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40ff7bf75acf953bbb57a625093c09a3aea4698a46f6bb7c344c536bab281e77
Date: Thu, 15 Feb 2024 07:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707980896
