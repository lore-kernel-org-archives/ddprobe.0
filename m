Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 564D21ACEA5
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742138394; cv=none; b=juTnexJHhLg+jY0euhzgBQerDelpbcrIC5bh6nMNATsI6J9zHRag/N5l/S65IErH23WQV1a4f4TrCTCqdxJD2unWdFBvdRvOtxDriRqti/Pin2dUlrKxf/ZIHnO+gnpYLnTjHj5pB/CYrZY5+Ln3v2iAHYk1aQahakyP84Fq7ZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742138394; c=relaxed/simple;
	bh=42oN9nZhOLnUvV2JLcJIwd/0OUxkQvGRQIehFPTyNCA=;
	h=To:Subject:From:Message-Id:Date; b=OvY8A6/rnlmH2nvhYj+Z/mEq+A3T5IhET5O3vSPjWxu5cBVmNu5S5ZB1dB6bxIXI8mbeV5l1/qqxmV+JkRxS9gGB/JxzNQxZFPM4rxYMOunKGjh77/u7zYONnToVceY3cUN4qohc85JRwPY68JI6tO4qv2/iYdB9gHWOV5zNut8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o6N4gmOI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o6N4gmOI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B99C7C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742138393;
	bh=42oN9nZhOLnUvV2JLcJIwd/0OUxkQvGRQIehFPTyNCA=;
	h=To:Subject:From:Date:From;
	b=o6N4gmOIge48gFg53HaU8K7mjBp8uOfNRb5g9FZWgzAa3l2R6gKfOA//uE11N1pg8
	 XkFv8x9zmyRJOrjpEX5lG99037Cy4I5JfvOG1FlkcpAKuf0emv+b4fc08Oqr+I6K6r
	 AyoeEgjMMIyNLfrGLbo2ZMzX7zdq94hD+roUBZyy7oup0mirHTSoK6R5gD/0OJQlPD
	 7QSJESzzegPcdMIkLBrbyEt9ZdmbWqL7pJ6LCVyqMkUFKCnx/htDbaAFTtubFDc8ZM
	 IvRMnmvJuy+mL5GkG9L3j+pz+7y+RMtBLO1O7Pv5OiJKrtE5F+x7DPzvn2TfpqLXjT
	 nIsd7AC2uSRAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97974C282DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174213839358.17132.14207294238821774726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63da2127a1977719133030c60429d69282451dc8984e13b0588b955d6f0ffcb3
Date: Sun, 16 Mar 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742138393
