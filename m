Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1552F33993
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754006395; cv=none; b=cGOkyO+eEVhyW4xxqF+6ZpPGb9yd5Hur5yXDjW6gfdgcJ3HA0iEwL7q+8EZRlnJ6cUdTcM09KIi05L5CG0RP0+VQ8eVKT+aCYNA8pYO3xmzRzvi/zPP227zROWMAdScbFC3GmzYbggwpVKKUQTYxulm9UzoVCkus+Opgh+ZI7GM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754006395; c=relaxed/simple;
	bh=ZOKRuYz+rm8ZrClU0Ui7H03Qnf3Tkhwfuey2gEXfZTE=;
	h=To:Subject:From:Message-Id:Date; b=WQlk0difF8JN50iZfBTwgrSEEQ0/qRDxSN699yGIjUwH07PpV9vHRhZhYCA5A6qEyQD1GA2K9CtnRh+4XqN6cN8avW/9aK3blxdic6X+D1oHLfxzeWuho4ItNjmntAudW7mZllWuyZCHreGVTfPHLPhKJXVgcZqbkSLm5kBLiWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SH+LmVOq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SH+LmVOq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A114CC4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754006393;
	bh=ZOKRuYz+rm8ZrClU0Ui7H03Qnf3Tkhwfuey2gEXfZTE=;
	h=To:Subject:From:Date:From;
	b=SH+LmVOqY9S1Yur4lrlPT8Jp+D4tLjgXMQ7Tu+MhxJN/iXpJ1NnC9XE+LMWzNG45b
	 gIAP3WayJO13P8QXnxcjxvbsdLgk282+WXGI7OB3KR6LcjagDFPvBILvNCEi82jJqm
	 xCZ57l4GO5qDP8/PRnjsYgyQdBAtgH2j2aV610V/0jbrbzLRG8mXJ9A/d4BDb7WxRh
	 FpGx0OqnJNgWT/oh2fz1NAAjeLnTV3rudG8p8l/LsKv/3SfegWEX/EMMlArv+KPgFL
	 RIH+TEeafpVXXaVjVAK/9dITfyyzOyKNFp3x7R4839iSDsRbrqyGkb/lz/o/pjvcgO
	 SHVZtNDS3Llog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDFBC87FD3
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175400639357.22698.11559337807752578211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ff57c890d2582de7729fcdfe27ad3eaacc9a9ddea02971bb1a05bafbc33f9fb
Date: Thu, 31 Jul 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754006393
