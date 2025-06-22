Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31DCA1E9B0B
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750620594; cv=none; b=Dd6s8uLfcbXH9De8aVpgaHsxpAoJy+LvRAlA3FrkfrZIEbrxdwvc++Zo5IksW38Tzw0bO8YJ1UNbAktyZKXgfz+hEqvGui3xN5m2r5nWxc2Q5YyJyvSMzwmA9QfQzVjmm1CJR4NIzbahV+JOC2gv0JFcrykaT7JUBMAFwGf0ZEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750620594; c=relaxed/simple;
	bh=mnn/Q/V0sIf3Af7UDETQgydUhDWuVI3bN7UE4/4g0L0=;
	h=To:Subject:From:Message-Id:Date; b=mOtUMoDYj1dbjZ4YcJk0ivUILK8GIbNmFWgVo/Njl1xBedp3uAERXwLMJp8ZzuEBMOEmZ96OVXdgVF7L7GDwCrKNaCqfViA1eF/VNdTdmsBzW0mVuAQPLho8lhwkcmRSSBaV3mvEumZmPLv/E2iItwiDTMHng2N5bxp5P50c4P4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SzBQ5BzH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SzBQ5BzH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E4BC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750620593;
	bh=mnn/Q/V0sIf3Af7UDETQgydUhDWuVI3bN7UE4/4g0L0=;
	h=To:Subject:From:Date:From;
	b=SzBQ5BzH8By6T41m3KTGoJrMVt6djr8Pxz8lI/Ipm85VWGFHVrsvA6ekGRvJ0D7UG
	 AehcNkdxFJY74KhHBNpU4OIwWEksfw0dZsEvG6W1/jpJfN8qP4KDsAOGcM6VQE6Rti
	 zOInXWICASExD/MogzM8pBT3QMa/H+j6Vs/03hCWfywnXIxU3QN7htfZoubCUi66ky
	 Qn6tK3RGk0IlyfHEWbLazrzwqhf/38sV6BTCjm1Q3dSHq/lM9xGKN4ifteNXJek02U
	 o8YZULzlG5UkTAfLOsxciMpAgkN9MtwOr4wvpDchnadxdDao6axZvi/8JPBcVdtmGY
	 jDVwY2Pe5jEOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DECC7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175062059358.15445.17843425673821585863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ef178617399474527a214a54cbdae4a32fd85ae526d7d3955977648d2864757
Date: Sun, 22 Jun 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750620593
