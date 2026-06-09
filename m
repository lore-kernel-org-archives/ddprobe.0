Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA1D2D0C7B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 02:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780971874; cv=none; b=nYaZ+/qWIRzb+THrU3pvUuVe/91rIFwCiob4mRXZ6eDk7tFG5ezm46ubRZG+l6ReYB4yYt5ql7Zvv5/+AsRWfUCg1kHI449dQ6XnZmM73KkZfwoOUfPR6ZYwNPrVBTBvbnub3NTVjWzGeAKrlv19aK/DsYIivB0VJDK5M7AmOCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780971874; c=relaxed/simple;
	bh=2BwVhx85prjsNoLExSyEH3+XBtclIf9tcpvQalfjfX0=;
	h=To:Subject:From:Message-Id:Date; b=RqDc4yfFXcNGcJyJleh7YmDmJCneVwX13YZUDYRdJrnIE7jwoshi0Oo0TjM21F0dhnEm/JuymOTFlqa5qBDg8XNtqEiYfmmZY1PlaGsIzjfdUIMBdhXGRhzj2J4Tjcd1/s1eaG3CXHUBxc0OYOZoDKmo1Ri/ACp8dPfui1K28EA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F8ln2+80; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F8ln2+80"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7734C2BCB0
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 02:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780971873;
	bh=2BwVhx85prjsNoLExSyEH3+XBtclIf9tcpvQalfjfX0=;
	h=To:Subject:From:Date:From;
	b=F8ln2+80zsGkeE3NZHJ1Iqw7ii8fgILJJaVLm52YBmxJxygUCq2lZu+ajVQRZY6ZA
	 sr3UKi1fIi6wPQR5nzGUBdIOZ6LByqbDtH6vD1XYT/VCRl0CobMf9FoMBWTJfXcbKJ
	 i6Ek7CJufRjGiVPHsJXlABz5uHdJLyYFe8yVVQqpzDapGYgFg3/6323TBtbhLYpdf3
	 fjGBCzB+F0Lvy+OeNbT3yUrB+QGJkgjemnppFLACK1JxHufVS1A4R0z4wlcnnZEXXY
	 WHQzaDkPzZ+aAqZDaZQj/qEKHAkI7+eWouzS1Q1mMzBCJc17Qz6es1ez2Wy4qIbwYm
	 EpdcSU0NSjYSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF25CD8C9D
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 02:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178097187369.19469.4030755495867147311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aaa852b24fa43a1655072d5ee08051684720ba60f54f2c488485660c6942288
Date: Tue, 09 Jun 2026 02:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780971873
