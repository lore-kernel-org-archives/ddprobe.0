Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FAEE158533
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736095554; cv=none; b=ZklO4uOXPZLQKD+FVDscCliOm8eBgFH+lOSU5YjslMeVwKiBfOn4KGauo7z6DDa73JOlHYcFDzYMW6xVUDyD+WkJombinBbKINZ/k5V1DAD/RZ/fxvRm4OuBbYpdirVjn5OXAfZEBz18ongY1/XcE/KYQZc7EJ1Szwy/mcN8DjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736095554; c=relaxed/simple;
	bh=68IYdHZ9VWB88hK45pPi6HfCz9KaDThm0JDQgmhPRUs=;
	h=To:Subject:From:Message-Id:Date; b=q5Pm9Nwz3hTe7UJiubO3JiY17oCFzkhIVEQqRPY3dtWw2rrOEDiqoMHiLp3QaAbsquuUrid1cSB40nVq5s9jS/KbfeF5yqY5DAkNrdeSedClq1NvKVMroL/WiSM6pev1f7CBO9pGxb6UVei3wzZgxR+kyt7kzcIJrxjWVa6XMK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SQopB3ua; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SQopB3ua"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B28CAC4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736095553;
	bh=68IYdHZ9VWB88hK45pPi6HfCz9KaDThm0JDQgmhPRUs=;
	h=To:Subject:From:Date:From;
	b=SQopB3uaNp7n2kV2FIFrplZq7VJX0C5Y6vSwwTlhzRIFS8+txzMzAs8JxxlD9ZoNw
	 TyMDRhd3aQLsIsyqMXWQVEcvw77wUBDT/nsRPagmvdmSdO+765iSoJZlvY/HoG/YPX
	 VwURXZOq+COhYF+ySZDmyOf/xp9KPy17NuuyJxVzEGS0vcA5PPuaQ+VDp0k3ZOsUwG
	 6mD8ZWHD90aTnz52GymGq8hvyX7olFDtJmOaGkXNwoPtiRJmRRlB1cD8tZ3av1PRxg
	 W7ZZvaC8/I05ZTvk1d1I7/w5Ld86/wTdFgxlRH6Z5TK0eFxg4/4aVUN+pK5vUOTXtN
	 K0ZquonARXGsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D290E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173609555360.8874.16160447710082377532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26d451936fe31207d8ee0b1b3ac72277aaa8d6a256c402804368834d08af159a
Date: Sun, 05 Jan 2025 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736095553
