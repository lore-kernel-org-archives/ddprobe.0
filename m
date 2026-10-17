Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DAE02C026C
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792252234; cv=none; b=KLrKvyAVdxLU5n+xZHkPNxSXMBc7Hml7mo6+/3id932CMs96Ds9VGKFEaRkjCmJCe2BdiPyJ51Oux77gD/h4e1EHICUQbe1kLY2/GLjxuIsIv37PlIYzJ4jpj/Mp0H9tm7XZbnseKjEdx2xyF+5lFatoBjBA+v8f3LyMldLAWN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792252234; c=relaxed/simple;
	bh=6rVyRdXDj6eFnlSSWT7bbzeYkRYAEpH9NkvPSyqFRhg=;
	h=To:Subject:From:Message-Id:Date; b=U5GTrKVK6Pnmazc3oG5VFLxKp/uz71D1dGu18gyodqQRhH6a9KsI8Hp8XeUUyOG1JTuwukHFkbUjAYv9CyFc07cjfn7y+og8HAfbN6Te7B83Xmi19EUcIMHq7SEeRDzFWQHx4NXLqZ/vK0gf16l+Ng0GWLHLZqTf/bZ0hPT7twY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QoQQUHYe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QoQQUHYe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D040EC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792252233;
	bh=6rVyRdXDj6eFnlSSWT7bbzeYkRYAEpH9NkvPSyqFRhg=;
	h=To:Subject:From:Date:From;
	b=QoQQUHYeG0Tqs/dfKS8tQ4KwQeKejvKPrzjsLIRjGnFDalQ7JzsuIN+Oai48ZdE/G
	 0Xl+/7a3+nwNiycvCovbSLWqV0eaglUCstQv+RC74QjI/gdWhewl4ZwpGTD4lBmstQ
	 ynYM/1GBP0N0I1JkP3Upv9G1K79lZaK9niuRCU/t/wGwUVfWd77TBOvAN9EucT2Kaq
	 O4fytj0SC6oxc8Rtyp1SPZU4s6ZB+u9Td5gefH1MG/ALCTk/JUWtPD4QCju+exTdMD
	 MmFXXZLUsa0JBvlYdWqcNN18bb+XZ7bP21M+ayiIzHYv+v/0JdiIHUM9mufkiBw9EU
	 8aOKkgrwbvjIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC420CCF2C4
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179225223369.17964.8945095313288813099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3908d07278230baced7e7704c8eccce3d164511867cee581716c2c23830b8271
Date: Sat, 17 Oct 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792252233
