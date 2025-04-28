Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320C71C878E
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745824794; cv=none; b=GGBgZUlMqMRkfVsjM+wk+QVYdTFiQATotAE/bYcwxqvoNI7a6aTJ+seieA8M8VCGXxyd0aXQ4srMBbUvojyX/r95N8L9wxJBGn9PINKRfTyCvHMHDtVB5RB3K6Yo/Sy3UbkJsG2YIqHSI7Tawfl3YCydO0YcvQL3FgbOL/xAfY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745824794; c=relaxed/simple;
	bh=oyeahJyqY0xQcTfe4YiiUBCkeO3Md5XxIXqpiyRCJbY=;
	h=To:Subject:From:Message-Id:Date; b=qTq30I0stld5CCGz16Z6aWA0sBxkKj2bqnD1bvykuDJ2YalHsMhvmArv6X5AIHzCD+LvT1qz3/qkXGgm2dCeLQTJB5MvnWKeKQntZh5GgY/oB6EFoKT/rQUdbNeueDo9PchUgKbEXvzKYLXtp6WwdiNm2VL/Iw6iiPernx0ucHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DnsrIE8g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DnsrIE8g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C2CDC4CEEC
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745824793;
	bh=oyeahJyqY0xQcTfe4YiiUBCkeO3Md5XxIXqpiyRCJbY=;
	h=To:Subject:From:Date:From;
	b=DnsrIE8g9hFyAiRrjP8zHppNYMwNtrrFPnJwVWEJ3d803vs/VIxUGnNvbJRaUOHnI
	 3bKBdXSGqsJcvJjZ+KNYcLt2rM+2x2RHLtw7f79UsnoMsRlIE+qPiDZKeVbssTV7nw
	 Qtn9e47xK7T1/vM4Ii2yfaNWGRBKcKWMqvrHdRu9e52c1frH/YFpbmOLJmBwV2nlB7
	 rbl4O10ct/OyhF597AxLEQFODvPOWwkyeCk6pyN2RBAatk67GAk6XZG4tXlU2hNbmV
	 DUwxWWIkvJBGSB7Z2shNwLTkThGOhWAFXcZ1m9IVrFbx8Xy4JZP3kduASwebZRcwV+
	 CBBCj9Y0VmmyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC13C36005
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174582479357.32666.9819068500459218275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f167f197469ce76b8d6a35f53d7ba59e269399427654b2351c453de8882bc23f
Date: Mon, 28 Apr 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745824793
