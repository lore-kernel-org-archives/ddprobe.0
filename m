Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B521EA7DF
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761194994; cv=none; b=XWYpRJFOs9xn2V4q6wqQRYgZDs4okmYg+gP6aPXBOk/Cb1QJFb24wT1BGiD2OWJQT5fZj0QHDPwaVX5TQYisTOTShlYNU7aTpS7UkgP4KskGy43UqCYwreuOKTJkSG52ni+94uZQIBRBrHdslB5BkDINRiQg9OctK0RP22wSS9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761194994; c=relaxed/simple;
	bh=+BaJoOGiVZ/k32bmCpIcIRImcJcCEJ4egJadc/jR34o=;
	h=To:Subject:From:Message-Id:Date; b=HDnexDdG8IBJIu9O83GRRnOTpNJrfVcHFWMRPS1uMZvVM2zNuTdvCENaN3n8bMFULc7q7ZbIkQUhx+0dpc6QsS6dqc13yv2TxuJKLbAHJH1Qtaxt3buRFmX9BlIT1JR0rkCQG0bU+2WWj4wHET+RT0MMl0bjzuLiTT30hKno8XM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ADxyrOyr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ADxyrOyr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A32C4CEFD
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761194993;
	bh=+BaJoOGiVZ/k32bmCpIcIRImcJcCEJ4egJadc/jR34o=;
	h=To:Subject:From:Date:From;
	b=ADxyrOyry0RT1xm7tlIvoOzAy0OWp0cgLFpWNXEv4Yxtwfpx3FGzjqQA3iV76K9Qo
	 JtoO4p52ohxlHWyVjj1aYS3O42BN8xyzY1jhPjzoY3Ro2D2NfhD1qSLo2C72YdO1j3
	 vU1EQX/uXH5yZveg9UlWupawHRbwWNjOifjwOmlMbBsCAwj1EAaZXOwEmHo5sGN6dZ
	 lETA7E9kAQAVN7NVIqOYQDLYjSwqa8BnqXdMUBzdLH5HdBM7OCQmaU3Mt9Pye55Yc/
	 fUM5oaJMyVWJMRj1/Uxb4QeyC0pJoSL/XLvf/cV6gOXxphfXs/rdBK8lOj56nuTjnY
	 PaWXeN1DvrAOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F888CCD193
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176119499357.22635.13229757843279879529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f869820d467767197c4ae0885d77d99ed93480baecc9f3c688c28c28ceab6374
Date: Thu, 23 Oct 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761194993
