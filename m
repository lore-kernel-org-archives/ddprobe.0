Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39744DDC5
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 03:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778383834; cv=none; b=VXGcBkUKxrTsiatj3RFqWPDuHBWPI5yRJdP9gpt8Fi9wl8XXoNwpKejfYbaiMc/NSVXKcSE/XsR2cnkCGWbhnUM7ULdWRvH2AESv18S6rkOfpBiF7J03zYSGB09Vv6TOUgnXUgPdb80z6QbmHYKDrU72lX/HjdFTDVuuffsVaHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778383834; c=relaxed/simple;
	bh=Ts3RjPKCkTvCiYOdWI4/o+H0xN8rqq+Qxzij8iuG2Mg=;
	h=To:Subject:From:Message-Id:Date; b=HLMjExn13OFzPGNyjhaa9dpjgWkUkiKKTk9JitWCaLUjjzR1rLaQHufuKHbmaREFkPzYu7qJ/pJJtjlgoLcanzSUej6Zac7vwipGE3Z+pdus32VKrIp5j+sYiBrfoqcVu0fAcrBwsggoZvNw4CwWl7ufmSt3KErozdg3JtuLmtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qa3KgQU+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qa3KgQU+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2CBFC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778383833;
	bh=Ts3RjPKCkTvCiYOdWI4/o+H0xN8rqq+Qxzij8iuG2Mg=;
	h=To:Subject:From:Date:From;
	b=Qa3KgQU++EyoCVzIkiqrpDkUZwOwGBSsWa4ZBLZvj7YGydbrOWlDlqb2bJoVVtO6i
	 jkuojHahipOJmDT65+Sl0APBjVf8GiW7HLz5RnGhar2iTAIxbNJkeXts8/wRgKW2gj
	 3/knx+r3oOjaAEOATydvlC1d6zVHXssCCsQ/RYQRB5w0oN0WCvPwGzd/j/1jgfgy/s
	 4w8Fq2IznWDt2rA0ZPAEt9WjaEHKlyN1eZDis6FGXkB/ikob3jugvAX6+PE1B25y/d
	 D5dBJ1Sf3aDrIKFi2Jn0cWelKqWjZD4f8s2UCj8dbqoIjn0K3IaU9pbgKhBtwOYIn6
	 MLIYvjihdMkCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3F50CD343F
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177838383368.8275.17924083208546153502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d939e3de8f14c1e0a5a394110684e8c058188192121313e6baf937f4a8225bd5
Date: Sun, 10 May 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778383833
