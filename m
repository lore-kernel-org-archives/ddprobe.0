Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 973AB233947
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 00:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779928954; cv=none; b=F6KhhwhyCcXu6f+O1UJQmMGOqACd/Btp7O9S0mHiT9x6DwQTAxEWWC7vO1NYFeh1W/v4sKt1rmetvZyexHhc2KfdHXvpzghk2u2FMbdLf5FQOZh6MISYscxrHIsViATYuN8GMxMBGFp9ly8l81iYPD7lNAA0QDsf1VF7RmBnU5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779928954; c=relaxed/simple;
	bh=aMzZXUIoiSJ5GhlD99kFXN/GFe6EW1PXL/G3h8k+jRc=;
	h=To:Subject:From:Message-Id:Date; b=oRhICzG4H9OD9LwuTGqUEYpdWiLL5ixs6DsARVcPmk3nvj+NAyGeW+ZZhg+Silst87xflcCdOCnbxnDqoojmylMgt9QiNMz5cf1VGI2MMlr1V5264eQ5icNfvVwPla5d0zc8AQqd1CIlQdFEqsMIkV3UDIVIojoAB92/X+cJieY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jzSL7hBN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jzSL7hBN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDCD6C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 00:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779928953;
	bh=aMzZXUIoiSJ5GhlD99kFXN/GFe6EW1PXL/G3h8k+jRc=;
	h=To:Subject:From:Date:From;
	b=jzSL7hBNZ4fBYcnKE+/yRR0kjAKzBcQ7DnVaD7zO9ENVQiOA5wrspIASxuCMXIiqW
	 GlFbYN9H4RVTFio4rxKZfHkSjN291PUKmDMsYpFs4UnKB6NPSQLaKOKcN6jkD2WJjm
	 KQ01T5EEE7ZaiTVt1SYzhR2qk30xWYHOFUcarmGePTqc+lMmZ9+vapNNCB0Is8WBjt
	 peTP/FP3O+aaLGu6C7o70tYYNrCviIzESJmomAJuSvB0nXkR8mu7ZgX1bJvrGYK6BU
	 bYOJ4tUtWgH6l7yC6m1N40PGG2bxGR5u04U2xlo6rzIZyP1foaPKvqSdz1Nfa8FRqh
	 IDzCj2bWGvmFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4E4BCD6E48
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 00:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177992895373.13325.12713285909413713303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27a19e68a2910b9ddf116417813781379842590e306a685c3b8f820a9d7af3a5
Date: Thu, 28 May 2026 00:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779928953
