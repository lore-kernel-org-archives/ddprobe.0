Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58DB9274B28
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 19:03:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769195035; cv=none; b=QFpF5jw8qb/y7wYnsHWKEqc8wPmCHVgLFMseVWPhb9P5AC6zmlc0rIYQ+VUAinq7pu9sSYL4PZbIl35LJl9mEqU3mV248O8HmAieBIZuhWbmTry4Cvs++ysMrPUujesYUJiAEuRm3X9+6OgkPkd3nMJMQZ7mUQEf9rpepDYZL8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769195035; c=relaxed/simple;
	bh=X7V+FYfaK7PB7Gsx9XFfo+Zv6+Ddw9nwPDZcdAMGK+M=;
	h=To:Subject:From:Message-Id:Date; b=ZDby2dChnjt6w8nGOiGS9+n2VeN3wIYebgI7OvD2HJu/NZ5Kp9avr4BhiOzqlAzz99qeWDvbJg3zEMFXBInUEkJ4UkoLpvHIIVjhrRjemDZBXCgm+ckS1K7XwXaFCSKkiRDaHuLsC3TVx+hsifMclOuqXOC8DvnDS2i/C9OESx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PRubi/c2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PRubi/c2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A51C116D0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769195033;
	bh=X7V+FYfaK7PB7Gsx9XFfo+Zv6+Ddw9nwPDZcdAMGK+M=;
	h=To:Subject:From:Date:From;
	b=PRubi/c2zsG9z5mu/mn/qJU7CRoaUmmWNwyUO5AVPqsBJNoXtNEtPVyiLq/AFxWqa
	 6GsJ5Ydd2eHPfyqiMsboLZoKOQRJA6z7QJn53lbmK9JqFojRpjmvImetv7RaMZeDjK
	 g8KYoub4jJFW1uqMUcSifNF9x0VqruAHuPdVWYnlrddNO5yv+rCUAe4Y3ukO7DhJrX
	 aKzlj1oEHrYhm5KnHEN7KA9SYjOAPZoWobcsv2cH7TbzAKZq5Y8R2XwoZuXZduL6zl
	 8TLeeNaIGSNK66numsw0pfNKCRG3gYmUrP7d+30iJG76jAU8WRAh8tZcrz1QVycnzO
	 9FILLPP7fHVbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91153D778AC
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176919503358.2277.15690725917181238450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 647214bbc8960c4faf0936fa88b31c615284474b554924762133aae5152653f2
Date: Fri, 23 Jan 2026 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769195033
