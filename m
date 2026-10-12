Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5510D496D51
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791817834; cv=none; b=WRqp8RCuNXl8/H0xL+wTXwJeUPNJTa6S7Ix/gVMcZJDBC2cfbs9wARRHxyjhIFA1IU6EomNCBXJA4q+L9HO/UVZInzKr9xdBa+pV6X3or25nAlohJ5u32VUH0+Ck/EMxbhIuuKTHzrIkayBpHkbnrYpcrSb7Iwkt7u1BGhuQf3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791817834; c=relaxed/simple;
	bh=FzjtDBKQAwtEFc8hty1nGlN2DWmWJzGx/cj88brnB9E=;
	h=To:Subject:From:Message-Id:Date; b=GKTA98RADtj5whfINk0MVLcJDrLvOs4xGZlOpVcbUX4GIWj09qhPOYyVRH61SnrbGSfIZCmHIV5MiwaSY7XGdx2xI9mR8iePw1Wj5ywYiDVbw4ZkdVuSD68w1wnN4FlZ3dSCu44cDrQ6LzGxZmynWd/LkJnjFBwJHkkwzjv6KP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uOBuEFPk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uOBuEFPk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CECD8C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791817833;
	bh=FzjtDBKQAwtEFc8hty1nGlN2DWmWJzGx/cj88brnB9E=;
	h=To:Subject:From:Date:From;
	b=uOBuEFPkUXZKJjQHlWKeO5pgKYOZJbfTzzQb/r9mzUWeg3LLjTwxCy6A4bnLkl+GW
	 /A9kQP/+fcIdrBQuQLi1A9+NOITLEz6SfbIPxWeFScRqwg7/635MK2Ov87nc28MoyN
	 kcnn/mGJg8w72rFNohaTKoNMM2JOY3SZWINYTy1/Az4akkAqh8SmkgI7efoYJZBd2r
	 CjoGvfcJ6nP+2q5g7obv+cp85PmMN1WS/lQWQZZnyGz8XPOrH/oxKbJbtZ9HoZeIKZ
	 7DbHyGnF061+3+g8apABX0GPn8ObHyRvbdoE5CJgFzXXfGuqWx8MJxRTvDFBiLbzZZ
	 BoAmuWhGC3Jjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA36ACA9EC5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179181783368.29520.4344289762440299057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bebb0e1b1980571998390abd8ad03fa97742495a006309b31950dc41c9c19353
Date: Mon, 12 Oct 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791817833
