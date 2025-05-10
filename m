Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E00221FBE
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746898194; cv=none; b=B+avt5aZPXO2Nq218YtOGLRRiWc4tdT/qbDKHFCH2nhEC7sVZi6TpnMmcSkO+YxuUaG/PIxSOPF6izAViSFuwziU2NIAoOGFpWOwa5DPZp85ZeXTazCvuWUe6XdXo6vtmFR/jpUZAOLw0G/E3swEuSQiknSKOf55IAT4u8dp6vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746898194; c=relaxed/simple;
	bh=I9xjmkM2rSO+ErV6heqKB7duAMnFLursHVd2saMgerU=;
	h=To:Subject:From:Message-Id:Date; b=dq4OyYa2tn52Z8knQP6vbQXIBBoMy95u3VSZU4gu8x9gX+MRbPGYdFG6a812553dlrHXsCT4Xfm2yZ+tSbEyucu46AfD3e8H6Rqe/6t2oJFJe+ZI9lMs9tBNpkY31JMhArt18dzOE3199yQuAOZf+6Vru2msL48KoxOZ2XX6+yI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QfTcS5rF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QfTcS5rF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B3DFC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746898193;
	bh=I9xjmkM2rSO+ErV6heqKB7duAMnFLursHVd2saMgerU=;
	h=To:Subject:From:Date:From;
	b=QfTcS5rFqjRSzHT0gzBu1KlrA4ZxBAtd9W8oPNW3Z4BQWu+goxfqWI1KCYWaww6tk
	 oH3JIHxO7BpQ45Isxizrgv7tHZn4Tn9rWbL/tKpkSvZJjnCCqV3ZPHFpWb1kzeI/PE
	 U3CsSGS+eYhWOqift9IIIhiJZYrq3J3nm4xbc5ixhl9HqElxOSQ0NWfMXFu5v+sRFX
	 AAguoKR5I+p7BZLiD/JEgkDNXLxbEBTMEEPAAGSCGqnOpQvuPbzVpGn4AUPl2mt3eL
	 XkvQuOQ7QCR0fO2WuyUsyIV3048YoBkJkkGH6LDbwkyBX2fVDDZ/Dg+Pndaxir6IO7
	 Qiiib+ZH30ZZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E725C3ABC9
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174689819357.23387.12758547670171040965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19569e57708f8622e49348dec7d0e7025a997a70908cb277da7610c2e58ea528
Date: Sat, 10 May 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746898193
