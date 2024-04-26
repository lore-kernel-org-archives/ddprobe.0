Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FF8E21101
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 23:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714174343; cv=none; b=B3cIQR3vNj+xIuAjcr3SL/o8e0w+8HL1tZuWVYI4FbWJWOiHox2LdKB0sVMIUXj0VSwRdYOiqnv5L0ZuQBaI3ADMbM9fHiuaBa4VInSxOcUcoa6LWpkEHhr7CaKZymLRMlzsqqrD/heE8oPDWWt+VrepIfW/4Aa5HH6UVm5xpFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714174343; c=relaxed/simple;
	bh=mNTJTRP+Iu9xzS/Wca9abay+JJPBuAhs3vL3Bfh1Ibw=;
	h=To:Subject:From:Message-Id:Date; b=qz0AXZFIq0vFR97SZSKf9UoH1yCCh9FREEVJEa1jie4YwKfUtsLgkG/enEZgt9fBc8u5VowaarMkIznNGTTBPy0/SyGwSlNv1kVTBvI7J56a8kj+2x0F5ocVsUatR02rWnI0MUzy1BvIhKAz9SMb796cwSDNBhYgH9WvgoeeYA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FEwUnVCY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FEwUnVCY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D130FC113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 23:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714174342;
	bh=mNTJTRP+Iu9xzS/Wca9abay+JJPBuAhs3vL3Bfh1Ibw=;
	h=To:Subject:From:Date:From;
	b=FEwUnVCY52GZaibhk9OXJH9LUTAkwEWiRc0eu6y7FzjtIxmPco+dL7HCYIRmCND0k
	 WechEphyokYQOgQZv9lQ7pUmaBEwLnGu/x81TVf97aZYrak4ln2VbdE0jCW1jc6gBs
	 xVFlW9fVP1n9jXXrlTc7bKnBnIsjH+IfRG2XcEd1FS7HfujCAYdazTHud7Gv1WHwWL
	 MCDA3aMbXeQhHoKJMMahcDUeWis7qHgOAgG84Gc0dEhz7rzPqR/7J/fBHZbyjcg7fG
	 IuhCqF/jnZSGJdcP7C2KwZ3w51RWux+o3cyxlkV5tvJyMs5d62u7dZ9/TNmLhkSDvQ
	 of49OHTzM07yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB41FC4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 23:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171417434276.17493.15512632067700893028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be8110221563bb2be556d18a92242196b2c302a1713a864eedbe297580183586
Date: Fri, 26 Apr 2024 23:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714174342
