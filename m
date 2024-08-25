Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3589A801
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724584554; cv=none; b=HojwjAoCWwgpIsP2kFsyMLlvZSf8dsc6TpJSI1piI7tNM2ViTXY0vVd/bBvD9EWJXbr+xiggH77q1+hPuUtyEPSzZiXR2g5XuF2GwASZGsJecm8tA9vQhsJKY5Fkl1ZPHM+hnrzV0f0ms6PubQE1KZbdkYhUYHZjmV06XCepapQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724584554; c=relaxed/simple;
	bh=Zuf9xXCpC+KisbOfwJmhDgE08xPVoKvq7jrB3VwqyQM=;
	h=To:Subject:From:Message-Id:Date; b=Rd5cFhktpadW5uAqyAbsl7jF5A15C9xJ1ciTyt8eCUi9LsO5zkbe6dVkZJrgFOoDqM9oZGrPxlNmCC4An76IPwiBYf2cibLApdkLK16EJT3TbwE5FH68cIgiQ4dkIouqfTJ0ddCLdggZQ1cJdvVjyzoqRheQgZTnnWaEp1LO5No=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HWy5kEK9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HWy5kEK9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0D19C32782
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724584553;
	bh=Zuf9xXCpC+KisbOfwJmhDgE08xPVoKvq7jrB3VwqyQM=;
	h=To:Subject:From:Date:From;
	b=HWy5kEK9xhSDkdkabhZyIHF5np5+L+fM6YF9Eq2wkf8rbSHcY8mFvyen/2cceYbIm
	 hTkAGKTRDIezqe3vibi2fSBv2Nnek5H1+ezjDJyLTZ4WOKQfV8ktTx6q7Xo47ao8LB
	 0jCinAI0SRM7R/whbwwI3GvCKBkXTmcGmX8VDszPvLZt2P/2/i6l1Xl2KrHHK9BYBQ
	 bAAWo6rGfYAKuXL6wKLUCpX95oIARbsSUhxSeq1BO/Sn7bOc9i65fsVtsDFrnwKo2l
	 GSLjrsKL5hgGUfgf8ctjJXTbcjhIz9oGumw1Ep7Da5wSST4SO8gUybHQmeLgw4C7Cw
	 u8hO9G7er9Uxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC70C5321E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172458455360.4302.11497498548981822973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9972a6a5179e817fceb1df277de7f7f6cc7e4cca7fcc37c51667e6e41367d7d0
Date: Sun, 25 Aug 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724584553
