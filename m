Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459D62DCBF8
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785985234; cv=none; b=ZwGt+MFwrBGzKYd4c7c0rpBHvjUvwls7j7jCofSKUTnLUOeafddr0iMgjoHC/NJktVRHku3DR1M3iSmj3CGwU10YtaHX0nycSd9XA4Scd9pYdx4k8urVFYmPXOFyf6tXTI7RFpGjg7GFSW2Xhb798bCByf+JQQvmCI8OJjSfRKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785985234; c=relaxed/simple;
	bh=NBsS6cEw/eIYbQOmRtkGa/yuk0m+NQVq284znbrv8Oo=;
	h=To:Subject:From:Message-Id:Date; b=XAPB8mB5wMi6A48W/t97cCuKeFuYTDPpwV3TCQn8ouqJyJIEypea4s9OzJJ3NCmIGAD1fa1cnKZfMpjEXGjlKOWYtTfMXWt0Vg0f21bHjABvVUfT1hc8s5LZRfejucxadDcNf9h+HSwKl+K0jz6G2WHSlsaXX0bu7Awy/s2nUhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mctVzzHN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mctVzzHN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA18DC19425
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785985233;
	bh=NBsS6cEw/eIYbQOmRtkGa/yuk0m+NQVq284znbrv8Oo=;
	h=To:Subject:From:Date:From;
	b=mctVzzHNMdY/rSm43cDoyDc6wDubPuPQQ/6MI9matWf7J9VcKPhEoEMqaIPc/YopP
	 3qpvi2rFBNfMGqywWMBJBgUk6xXrqU1KFYOapmvzJJKwRoyEy/j3xZebeZo3h/faNi
	 0YV9kBBS8jDSvTwMzb6PVeqtaRbj8xQe2GEDy09nI/kbb3QzZIAlfneKb/jNxCxTmR
	 vP8r1a7V9qSOLIyMqE923UvldiCUJnR6LcoEKhO+TsJjFslEkcc0rjVpkBN/l7SOrX
	 p9A/c2TyzRsrJZxE573aBc/xJxXFa/PDbvkfHXO+TN1FpPsrOfffqTD+Ta++0H41q6
	 SR0ENoUsI9h6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B548DC55174
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178598523370.6562.8936144740871463583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 922902872fbea0818c58c7e8f530cd367ba4ea4784953b4189c059268a800f4f
Date: Thu, 06 Aug 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785985233
