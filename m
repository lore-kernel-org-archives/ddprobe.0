Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3353A7DA73
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753677594; cv=none; b=O4Rm7D/ZNnboTJNXlOlKQmuS5NzXFzgwGkcX2xbifUpPdgrFbll6NzHRtqHDmMRhOSbUV2OnDctb9QtVyK2KGBvkCerbXjdiejsdspgNy0kBqz8/n1amULxea6nkkvmf5Ade1g1nV+1vuCVmxQaUZRyKhhu70AW+44cB8BI1U0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753677594; c=relaxed/simple;
	bh=b+FdJCaS/65DfY8u6LZ1r1lvULr8vYd8jYptfXzRnGE=;
	h=To:Subject:From:Message-Id:Date; b=OWDQ9P5VtdAJ2a9up2XRIGzOOh0npcx+oe5KKnfe6on9N3S6jftS8hEugZnlrfHFydtTzhvdFlvhVoN/kBYcqAI1KKtT/nDnOOB/MMz4OSBjpKbgCWCzobS1GIgnwBuR+L9HuREYcJxq5jYR9GkxUuIfakcnF8saZiVmME6gZIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EhhZ3ZnR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EhhZ3ZnR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0ECFC4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753677593;
	bh=b+FdJCaS/65DfY8u6LZ1r1lvULr8vYd8jYptfXzRnGE=;
	h=To:Subject:From:Date:From;
	b=EhhZ3ZnRviB09FhP3y5Ih7CKUwSZXySnxrlOw6pGr5VZycJ0/avSyHYAt57pLzE1Q
	 LpZMfR7tFgdDIhAgHmHhujb+FRrxUUbXzr2AnUmz/+Qykmuj5ClGa3cmzCb1oDybW0
	 Xe13n9FJx87xNlRsJ2YQOxyYLhvbJAW9IHUxmbI9c0G47KzTjhnTDwc851Kn2Vz1/X
	 p3e2DyTAkrWC1wXy/CtFbIYG7HLA6DeW5Z/oaA64oIwbjsKfhLdUF6p+wyl4xfJr7E
	 xiCXfetylsfLNZHgVL9OtYUVBTS2coBHf+X4O6AF3zjX1b0dffr8NEy/v3vPaVo8of
	 0GkoxqNHywcVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DE6C87FCE
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175367759358.26767.10292285932861111993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2350e9a5abd2de2eaea540116c5814511629f7831f76633290fce77db16ed7b
Date: Mon, 28 Jul 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753677593
