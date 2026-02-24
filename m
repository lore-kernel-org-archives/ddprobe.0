Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14CFF39C654
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 15:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771946094; cv=none; b=KYYWBM+BJlhLmBQXuS9KXDBPisytTWrSSZmFeSvEWJRn3b4kSD1baJcGtCXZdTDOXZXVMp6MX/MswV9XNghqM3EXjMvmRGGJ8knxGcXbwGfpzqmrWZ4azUBUJJDvMgMj57DbHV2Kip3E6OmKZvbqCd8WepNZwO8i3OtVFsdaQOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771946094; c=relaxed/simple;
	bh=uZTJf3hmQvaQmWcZ0TZb/PL6rqEtblgs5oNQfCvScSY=;
	h=To:Subject:From:Message-Id:Date; b=qZfzpl0NI56x8R3+inR5H/kPXmRil5o16E961iMgLIOsdHfW5qVWiELEcr7riwJ14Zgt7b4i78wzmdLpGQgcReNgnyVuJQfAdwMXuGKcHAQp7QEtCenADP7FXa9vVUiNDj54Wv6UAh81m9+kE8CtZ69Q81Rj9h1LvYFEHQfRC/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ESVcxIv0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ESVcxIv0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F96C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771946093;
	bh=uZTJf3hmQvaQmWcZ0TZb/PL6rqEtblgs5oNQfCvScSY=;
	h=To:Subject:From:Date:From;
	b=ESVcxIv0ORRwZJKjhDQXd3CRbi+v/2dLW6gmgZa0ek6kxTWHdVgwEGJLzxv2AHAzM
	 EcFC35xzywpDRRM5OjpDBF0Hh3aY3IRh+NnEZrjPirWYv9lXNBgIFW+rfGzgTbd+0T
	 g0f+ilYRoC+ykzVB/Bp/tPWkqDWE8R2OAZ5kjz4KlsqXt55PtIzvPmbsteCacdWw0N
	 /AHRmyRx97aVAUrjLape7gji+uQxJuxhQ5nKofdDAMkxCWilw8Ss3Ef7LVyp9g/3P3
	 H4iLvCh9JGjKa5IT0gvYQAE09bhh6uh4QOKaWt3QnzDeOunO2iK29jbKhg/Apn6iPL
	 nEoiugO+KypWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D2BF3C997
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177194609359.29286.5312190327751720342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0c8a8dd63133ea80dbaa76825834963bff11546043a3e309541321ff6c06775
Date: Tue, 24 Feb 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771946093
