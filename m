Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42CAC155757
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737201354; cv=none; b=OwpcJZeWr3miHFEOlCbGSn/Q+jlTuj3M11yXwDFEd8FW844IHF3p7w3vi4ITmRFU17WZeOAAy0MMmDXctpP3iVPwhXJtr5pjY8VS5HYiJjljQsgwzcS8qF1H/SEI/g/1qLl4LmRUH8zPKK9i8/m7Zzzr6S7PZAz/oGTZbYRKcJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737201354; c=relaxed/simple;
	bh=nIsi61c6Q3PnU58Rjc+j/kuH2f62/d2JJ7pKsu6LvEA=;
	h=To:Subject:From:Message-Id:Date; b=o2jh9HhSlQ42f2N393flqyEoCSHgaOSDXkjFc7BoT3eawSrXX1azCrTUN+l3SUbOk0VGWItCcaaFI+6z4LxtwQX4t4KlXKLZQiwMzebT19AbUKdnKUX/Pt6HgLPcnxKNlTZR2sI1vrAbF75zEeUE2fjXl/b8ilYvqdCYej5/aqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KN0W2mxz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KN0W2mxz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DA4C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737201353;
	bh=nIsi61c6Q3PnU58Rjc+j/kuH2f62/d2JJ7pKsu6LvEA=;
	h=To:Subject:From:Date:From;
	b=KN0W2mxzwkP1aw7mGjuAX9miNEpgaLYgnYOzN8vThxPeL6Ems++Zn5/rCvuL/1KGp
	 T/aAedIDWfvqfFFsg3VAbeLqZGrlVl9EW1p8p7MBNY870N8ir16St0L0IYBJ5P/hco
	 1ZdP7vsGfZfNXR2XlhpKIjeKq0/xrWkbblRPVT1uJNQC4dAqr+lGvuehsczQru45FN
	 clk9bjrBBGnRYNCz8XImSAeT5DhtvZUL2dKnqKMOyyVU6Y7UfmZbOTsOzeV6SalHGz
	 FFTKoHGfsIYBBwFR29uLMdGqyIIgEMGt1rNk8ZmwZ+enW5z0LzOCLkC10OMUgZ7Mte
	 8yTmWVqcNBd1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA0FC02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173720135357.27393.9449662227689504609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d03159bcc935211790c0468d5589ccdfffbe742a8ce8acbe4e39e7f4861199e0
Date: Sat, 18 Jan 2025 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737201353
