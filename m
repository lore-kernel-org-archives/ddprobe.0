Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CCAE25A623
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738566955; cv=none; b=M1ZcKrnsQ8xcjnXPmg+uBu0aelOhXA/z1pvz6w0X9L4Pc8HN3DCr4QA6HsRg6kRXJ+JGj+4QAdWsgpBvtb/wV/vhtX5Jn1DxG5yRslKFb1wSaS4p0ZDFvsLoH0rEonjhzBmLzSJV+mfdgPKO7lq5xXKmKlrJA2filegRe6DljBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738566955; c=relaxed/simple;
	bh=1QLx6mhtYmupySc0VcxPoHa0Rdk4iNcGsIZsNlyJD10=;
	h=To:Subject:From:Message-Id:Date; b=W+B7X6rtJ9tX126Hf9+n+2oYzga3enHfm+jX7CcRCZmn4OvBqePNSzXSPUgT2UatSo4Afh21kg9R0ZocNGmKqrQfPgscF8HuaJ7qWmmqk8o6EAuU4X9cRd99tba+h5Ol7r25SSuiaX7uHylOIuSUBTlTHrj7V7sk+lLwNuwpiMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rZDNbN5h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rZDNbN5h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D18E2C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738566953;
	bh=1QLx6mhtYmupySc0VcxPoHa0Rdk4iNcGsIZsNlyJD10=;
	h=To:Subject:From:Date:From;
	b=rZDNbN5h7oIU+80AfsS1Xu3SSGFHJ//m4v6AVcOGni/KgKkfcjgoWO4MAidosRKXS
	 SLTtCrc9ih9cyJ7usg8YKu0N52GcRJXIUkq0yw4Pk/zUBsj5D416Add5G/wVXwMCI5
	 urhMLS65VH5e9v9dPaNbzOGwAxzFI4Fqea9LsjbLKTOtWYecnTw153atf5e6I1fb+k
	 2c0x5dev8byXPPGRUC88CJQcrLl7wQV0I5iqy+/KJJxcS0nEGfV/OLYfEBSq/BXZQq
	 KOto14pVNTJDKvcCJDWUnY3wblQKuYNE5KWhWrItAU+Mbz1xxvJ2S+EJGr2SqyqzUc
	 ANsgnve6nG0bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B047EC02193
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173856695370.17560.5827058939741272936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f60a6cc3e8a6dd0a89608bdf5fb6f13baf66c274dc5b1b572cc0adfa5e3d1bf
Date: Mon, 03 Feb 2025 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738566953
