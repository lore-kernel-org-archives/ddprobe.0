Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB5E133F5A2
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774205693; cv=none; b=nljDcwDs8OD5NrkCNqcl+fit2eGu7OhwGlIE2viIoMy0lmh1eocFIvgRvkFFFzA0BwWr9gYYvTXbw0kUfYtFvgclLsW0UYgyNAt+dInDTxGTrbcsCG9FheRlVTBhg0l6ZTVCOXoYud/LwtfOdimYoZ+J0x3uDxQPnM96l6cZV1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774205693; c=relaxed/simple;
	bh=pjVuJ7iwEmn7CxUImLVtYOb6MJPNastiFcf4qzDVIHI=;
	h=To:Subject:From:Message-Id:Date; b=odDNZ7nDX0+qbgwbrj/H8u7EYkB/stOX5uEnxUDMBEynWxfM1IjyXV9gGEFcP6dM8TfveXE1Q11j6qMtFln5gEhByt/2+mNs8ZKr9E6/27VhPSmfIdGioNxPnm+33g7/KXL+iZlkj2GsTtEoDV2poAn0zXoDOLQVG14SGl/0Lh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YbpiBJfh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YbpiBJfh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B12C2BCB2
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774205693;
	bh=pjVuJ7iwEmn7CxUImLVtYOb6MJPNastiFcf4qzDVIHI=;
	h=To:Subject:From:Date:From;
	b=YbpiBJfhtoLVamJUklwAAMIyuEVIZeYJHLuC/8X5IrgUxz1cUj9pPShcCgWMfqnIO
	 WSpOfNhgJzX2wI/2Q/1qBDQZOYqRuMHU8T9GA0TI69wLas2uMCdyAmd+hl18gTHoih
	 TykhrLAqZUGfxjhKPGgdZuTgR6OifOtG7gZ7Ov+vVX1hJJe5inBm+5XIOvK3nNRxsA
	 9WZTLa3NiZI52BrrdRsIEKuEk+dM+cupxb+O6zv4NVdTkx85vWR/Wu6x/rRzMhN1sr
	 gUjkW9/7Y5HAXY7q8oxi5oL9apd+OhcrOWh5HxahhnHRBqjKZf1HX4XYtHebVA3t69
	 mjnf6+xxelL6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A8CFC72D4
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177420569358.10988.9741362607698207359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6541dc6feadcd828ad03d7a16d06770c76532ffb420223b77b58a84f9ab75e3
Date: Sun, 22 Mar 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774205693
