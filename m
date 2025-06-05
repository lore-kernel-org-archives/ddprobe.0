Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C83186347
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749139794; cv=none; b=Ij91qtssic3IlsJnayTp31tSTsXmVRLR5RuukNxJzfVNE5Zj9SyFfyCrEaZ8HlGdaV8uuW3XaCCH+b4zulJdNqGon/fcy0GC8GDwgTm9Uwsj/Z3isycTZo5OCeYyeai8EJLAZqeb4yv5Lgofa8d8z2nER9F/cBI4noU8zeAVZcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749139794; c=relaxed/simple;
	bh=EoR4qzK6K3P1vaX8PaylJieO8BgmA8FiVQFzbtKo7Xg=;
	h=To:Subject:From:Message-Id:Date; b=eS3/Y75idrleKkDlaF0uNQTt+ymMZ+80/WcxwT1wO0jSTvBpIA+4h8PGugmluBS56pMPFi+/Qm51WEYFS9xUTpP5pZ8erA9Pmu9xEknaND7pIHGRF2HzXlLPS4x/HR2L8tf+2GWQH70qNdGO+5pCYLrQAwLf6Zy1+Zh6iiQV9bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H/FuWZdJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H/FuWZdJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2455C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749139793;
	bh=EoR4qzK6K3P1vaX8PaylJieO8BgmA8FiVQFzbtKo7Xg=;
	h=To:Subject:From:Date:From;
	b=H/FuWZdJs/4jgdtK9e1K1JKsSo0fVN90hMb7okvuHYVlEkprVdj9wEUecDNucXoW6
	 eJOSkIdTrKNW+ABIokNU7ktBN5FU1Q3Tb4Hhq7zJ/WH6cndj6pTOhZGoxMTJw8suiD
	 N68k94t/rx+8upcwvfbbLJz4eZn0WbPt2EN7Q+juDHUO2dG+619GxgXGsnhrUBmiQ8
	 NOslxHCy4RIqcaopuohQGsknE8sF/Mr1QgJOtBec+6MCazpwGkJXX3csaZrYTcKI8/
	 ITmSdI+cPRAMafHKfv/g8tCRzVVmwK//GxplGqqzXc5HZ87C5yRxI5dUxnz2gfKT4w
	 50Di3/OWQD7NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A7AFC5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174913979362.22772.295480242704023012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d6503bfa4a89115f33e8999fd79c0c068ad508b0ce334008826665208654b28
Date: Thu, 05 Jun 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749139793
