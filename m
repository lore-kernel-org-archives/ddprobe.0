Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EF0C37CD25
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772795094; cv=none; b=P2yfz+6ETpH8Rj5cOCxSgS+5hBmajs74kbg27gK0E40jzwgcOEXlWavLB7HZy+s+cOhGHKN+JvTw5cwxxigrfAxKLOWJZeEoUVuiBsswFeUCiCQZ+U+d4Lgn8mekW73a2Yf1n2p/pW3p3cOe8UBQ/rUh3i7CyQOsPm/P7WeHMuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772795094; c=relaxed/simple;
	bh=Xudkx6MwzI64QITgBcWD4DS5CUIw0O5niwTXhimJ8Mg=;
	h=To:Subject:From:Message-Id:Date; b=ZL8+R20LTH6HAlUMqSeoQ0PsVo1PipBs8sETE0web0Pm+dvhZyeLqVjoZ5jvWQ2HNVqXKUtNTZwwqqBnkLDHD49srv4etpeel0p2JKDCsR8F5+2KQwuhL+3bHt7ZIOM3dtTGNH+WC01R6PYO0Hg2hHx8LqoMZG0BKIR5PhPOk1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V6c6TdBp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V6c6TdBp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C21C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772795093;
	bh=Xudkx6MwzI64QITgBcWD4DS5CUIw0O5niwTXhimJ8Mg=;
	h=To:Subject:From:Date:From;
	b=V6c6TdBp4iMsY1gz5+L+lr0+NjtQTzOMWXS9JiGMkJhA3A+2lGDY/jPdEw1UjGn4D
	 OXe3TLUe0Dk6QH5QjXP9VL8tEPvj5b3ut/0VS/UHmvB8CBsiEcGXc5iAnJzvNCKJOv
	 Hm2IMOHblvqCn4xImEzMsWEmMM5jB+b+xtxN/+2Qkjvm7/mFThHFufpNfNhfKTQQdT
	 Swvdk6JD9402ptvaJcVGR09sOQsDjFQKFKlBX0LlHF2M9q267pWExZILKVUwANY2Jj
	 gkzT4nualeT6oAJYmFsv3jVcIPKFKtkcDE1JWARjoX2+C3kxwvtJ4VEyG+xM8Uckhh
	 YppQhk2HysXDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919F5F01825
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177279509358.5790.9643641587799070826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03aa352e3d4507005422f240c67585729126e203f084149bc2380bb34f571110
Date: Fri, 06 Mar 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772795093
