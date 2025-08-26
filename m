Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB222F60CF
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756192194; cv=none; b=k/YflcvdzcBGzBJgUAQ2dUn4tcYN38mJOYgfZ9qS37sNbG1U0ypUt1VQ8XapSwphojH2z0YBTU4J/dT91cFTHsQCeYkbN5YwUBS7Lj7WJijyAozBGNrVTUWPPwCg3TXdr/x4WwKimCVrpy88u7aMLT99NJ0C3PUTIxxcWh3v9gU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756192194; c=relaxed/simple;
	bh=IXFc5nawwnx+IuDPi0BT4WpNIV0BZrI4yxV6mAFZeIk=;
	h=To:Subject:From:Message-Id:Date; b=bPAygsU/8NCy/H46lMLpn9mYKnAww5Chd5Xzd1ZM1N8l+W4QkuneekTsIE/9FBRW0B0tcxspol9c0ONCRrKI/4Of79SQiAJOyteEw5ktfFrHRA1g0EzHqcPg/qvlRzXfFkbbt3acu81pzIWmjOqfMwRnMpLIbjUR6IIz0M0SEBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mq4FSssC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mq4FSssC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38E0C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756192193;
	bh=IXFc5nawwnx+IuDPi0BT4WpNIV0BZrI4yxV6mAFZeIk=;
	h=To:Subject:From:Date:From;
	b=Mq4FSssCQXJIPZ6wsqhN3ExHN1GbCkOl8ugVaZtMn0Wk6bvxe4aotHhFkZPmwdfTF
	 NtOaMUMOoLJfRXWo8gw9KkM1Zu2ADoBywAtaZ1HVkQXe8GMS4hrHGqIcbvqDOT4nOc
	 mHm54qB4F5ST8PeN4gY133MddePeX1i7NwXgAZSaLVY0sx+dRTOA/59MsxrieF9+fs
	 8K39qh1leatE0Vn+58xrbCsZ42bhJQ7hbwSjaPPPjzp8B93cemJd1smmLvk8wWrrJQ
	 MSHbAAqrC3YLiaARH7PXsWQH8YTe9/CNHdXV5XCnIaQd5KDvWz5bJbAuXbEJClewRQ
	 SPB51/Ive4V5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9175ECA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175619219357.11472.14471799490144164143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78cf04ac745d23c938ba8e6459c67113909acc8f80e909d9df936c3510600b07
Date: Tue, 26 Aug 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756192193
