Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F9F224B01
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 05:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764911575; cv=none; b=IvJMNkEsYVNpVxA9gJgDbmWW3HE3C2J6ZUQ3QuPx1XX9pidaU3EQboMWWMoT080SRFIC9aI5bfpoO12n9pO80aYjTO9fOwcjCEtkIbDYIjNtKP+OOIqdy8dQrc9yDDhk3H271mC7OXHsmiRpCDKzkOcUFV/ftXJSVoWJlnYZ+No=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764911575; c=relaxed/simple;
	bh=ibJijY3eqfaxiAGCXt+5nQ0e5qBQ1kC8A+A2tXWsNEI=;
	h=To:Subject:From:Message-Id:Date; b=kLguNM9bG5nR7SOb1hbzltCY/R30tT+bBfhV3caklb1OlU+Ouxh3oMu083l8YBzSdPoaAWZaYueDLyUWPjXiNrEoXOJmnkgpgm8mDWRCiTU00PMyA+Kqroi18GTg5zDxoUhxJ8H7Max/Rt9RRXlZ7p3SFuesb+MzHKOgrKJwpjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rhFexnDl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rhFexnDl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A396BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 05:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764911573;
	bh=ibJijY3eqfaxiAGCXt+5nQ0e5qBQ1kC8A+A2tXWsNEI=;
	h=To:Subject:From:Date:From;
	b=rhFexnDlz97r/8Uxk+oxn6pDsPI6yl6XQftbC0Rmh6mnUXfXmp66ZlUvCCQhn5tnq
	 kb1ObNsNg20btk4p3uMDztsUarT3fBknj3z1LP72o+F4OtLHzF5njKRAP1f1yViNUY
	 TIRZ5vNDpmBijmMjkgwbpokV00mzFh70p5dorJ/fNxtTrMmFQ/QHZ8pQ7g+R7lRuU4
	 hq7sf1GRPQGbfC3J5gTiFk0j1taJkHXWteurOK1GJelXz3bz3gE0Qsi7GgJnKYHKwu
	 JRyqFRq0Nfnq7NXveBaoodp39ys4CoMxU6iGdpDxQy1u/0W60kyJ/9H9sJj0Rt2PWg
	 tqv/ey52rPCsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDA7D2CDE3
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 05:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176491157358.2564.5275973041418056846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 159681828ae656c40b785b401cf5af90110bc2f649ac69d75261ea341fc33646
Date: Fri, 05 Dec 2025 05:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764911573
