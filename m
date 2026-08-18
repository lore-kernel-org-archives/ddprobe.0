Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FBFE27FD76
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787062834; cv=none; b=AOZTYUyW1u2QVugp32OHxCLDnPFqNrK7SQVzI5OGVy6zvX23zRx/TrOJhsJDDIyISK9KYhY/k45qH/QtHEc88DqrItOyqSsFC/PD6I3Hihx96jbPUhzaQ1WRRqpGXNr5C5lp7ePEAXop8eXUh28HfB8CX4VifcnqtbYptY7CiB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787062834; c=relaxed/simple;
	bh=m/ho8vFlAiBzOt3MEedqVOuW1ty5VR+3vlXSaldbO1I=;
	h=To:Subject:From:Message-Id:Date; b=mZEKMYcOCZ7Xmt7ExWaUXAQ6Mf8ruslInuqQFXaUqak+I1j0A580R4m8OXqxg8NU3rI+AuQ8wf+VdOcmX9sRK9nN2aPStPYFW/0yrZmHk2hCdgekylSuEcQ4TOy9vwm2Yx+LYan6vOY4MxXBXe0VOYaxFUyVWseVLDY2+BT//uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XfTVCxEJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XfTVCxEJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0FEBC19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787062833;
	bh=m/ho8vFlAiBzOt3MEedqVOuW1ty5VR+3vlXSaldbO1I=;
	h=To:Subject:From:Date:From;
	b=XfTVCxEJsa8c2sn7imom86BCEEY3Lc0wCGavwduxguJKePV6tcrpMY/yEaNyJ/R+2
	 pnQgL7vlzN6X80mlWJeqKBHw/xu3m3AMsFMEe9FyKm+3GbzRHmVYc0ekwJi0ZjldrZ
	 f3WpejTB8SloRY6SJIgeUGqYjTSCgWylOn1NDSO9L2ZpcN34fJfLlbXwh9b/0qjdvb
	 2oIBQBnOqdFJWvy6zgFr691W0CmYZy+VLYuLFL3y7tOWy/EOzn7PVYy59DF8222Sqb
	 zwwEGQ2fzpfsKovSWyU6aywNMmjAubtKYjuvKfYAqDUsNC3xSrm2eZzFFCwjqReorQ
	 wi+Xh5G3om5PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA4DC5DF7D
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178706283368.15663.17918948606226752686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d37547fae127604f3adc3e9d505535552eac1619531c3d62097f65d84101627a
Date: Tue, 18 Aug 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787062833
