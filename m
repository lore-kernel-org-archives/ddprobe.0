Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD5053B6C08
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 07:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784273914; cv=none; b=hrujcApHb43hJLDCXJ4MHJxQ59Lh1FqmkoqL9XqASuvTbd3lZOIBu6Rj6we+NUWzm+0I4uOWUKuhNp1iyCCcwURe9P2EjPYK9J39LY1vmMjqTEfuVDmHrJgb3Xo3/sC+LooN8NxYBAPS1c1D1sObwZiWvC/v5W45BhMmArWwrXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784273914; c=relaxed/simple;
	bh=LThgk3yqNuTHPHdV6bTKg1exKVZ4IkDbsyQW5c44V3o=;
	h=To:Subject:From:Message-Id:Date; b=oQLQ79+VJ0AqJrnvXg7EhNKV0bxzT26ZtZ7GsVa0yyoZ74CRg7PttrdK54j1E+itArO1iDsnJR9MWohgm7jesikGsQpl++fB4JhBu3QcrW3cNWpyT+xdqbCp+k3L2lhpSBTe+iw+RARg4RmYixeBv0Dyrzm7VyfF4aIhz/qyk2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zy9bWK79; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zy9bWK79"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0CA0C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 07:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784273913;
	bh=LThgk3yqNuTHPHdV6bTKg1exKVZ4IkDbsyQW5c44V3o=;
	h=To:Subject:From:Date:From;
	b=Zy9bWK79RxObUZF4kNh7lZGVtFtaPiUkwBnseXvD2K/gS/5iTbJBWwb0NZY2G48bZ
	 RpGjgnqolp0cLzAZho+fHBLSNi9l2lGrhjZSp/xuN+45f6Mgcp5SnLdsZx5owW9dZ2
	 4Ec20kPDFbE+DXhOfZ1P62HnAD/VUadfYQBMZ9RM68qRUWO6XZ95828EkzQohMrR0g
	 rj5Huqn2dwPV68wGUG2Z06M2bC+JBPtwsK8RAEFkOoaXCkIZNoClYaMAqPL9p8SH5a
	 0CX7kCXdDH8WrBP27+faakd5hOWpD8IYVyukFWGLoPP3vw/QH79IpdvbXRab36nPiK
	 jUsdjrmIrRBkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC42CC44514
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 07:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178427391369.8909.18027791690066977175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19a028fe4370fbeaa11a8b09db2369a24b7b65380fdd52231c58623f14cd3d25
Date: Fri, 17 Jul 2026 07:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784273913
