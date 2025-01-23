Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25DE138F83
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737638154; cv=none; b=KW6p7SH3FXQYgOnSzRwKef3Jx0dBvTE0Q0f5HJ7dljv4fSP6wVtFkSo9WSP/SmX70pUHacQXoirI+3+wYpjcVjYr5s10sH2OuijjYu8rCCs/tET9QUWffNM7Bev1saD54Ny1uq6aVBX7f+ulvWaMHsvdhCqvINQkd+qh1Raqk6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737638154; c=relaxed/simple;
	bh=bJJE06M8/r0TpT5tKKxw/8i/+lhfLXMCHAIISR6EFSA=;
	h=To:Subject:From:Message-Id:Date; b=Wmss8NBmC0CuVRY58Bc7khdfQ05SfrvwxKOjxrNS3WKlrZYu+Jf3uryjMoXfmxnCXuFTyMRJWReNAGeOxrZFfn8AFeTQLoWowff/3qChJg7Pm9o+OO79MxwJjLyjtn9/PiJZKAG8q3Oys4/RRzEWJt3HgVyPomgc0pDFGRcuY1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SL1v1lz6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SL1v1lz6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EF5C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737638153;
	bh=bJJE06M8/r0TpT5tKKxw/8i/+lhfLXMCHAIISR6EFSA=;
	h=To:Subject:From:Date:From;
	b=SL1v1lz6jG78c70qUgSQvzY5GWGXiWaMjRNkMBHEh+iOhnfdy4fTmquNED4i4l+KE
	 u1xiaMdSQlwW/3LjC9dswOlpthIP1ilofWg0cnLX7L/+roR1sW96r2IuH62oMDanEX
	 TYbL1jA6fZet5QeyQOTJIfMmHPXOcb/JVxUYrO0T7f+ABcpIcNSdGgWyX3dd+g8xB6
	 HqNykrOxHHiWqqAex2CHP6pU+XMewZoXqaDGnHuyIim/U5DmcdxOiUtHuCHgX2uPXF
	 s9FTVDPmZ6BxGy+NFYaw8LOxObW1RXk/i3Ai3loJPyhLySk2FAHoBRGZpkmfoys0R6
	 BhSzrhugG+cvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92307C02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173763815357.27414.7228388496299982612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a264ee46b302e7f66a77244ad70ea51dbc057549267921fecdda100c6ff06e6b
Date: Thu, 23 Jan 2025 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737638153
