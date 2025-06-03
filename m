Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A94224BBEC
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748975994; cv=none; b=lFxHNaPpzfaltYlmAelv0gpZtSIzp6nWhLjwlAjgqAB3HEFuByU7qTpRc6vSk1bgGyRKhmzYBhmyrVIwyHdIZworpToqPB46+Fv/pWiv3N/HclOJ5PnNBCIdfOcRk29i5AIfPvDrl0kg37nF+XBgfkk4hjxEo/3t4diaqhZDNqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748975994; c=relaxed/simple;
	bh=RIhUpRZVdtuoztkkQw9bVAGVBRC5F1LJ/UqfWy8OIeY=;
	h=To:Subject:From:Message-Id:Date; b=IHN6hEcpP9RLY5uUs5sIK1ObcfAWHtt+ze0xdFym6ITWhTbudVDrdhLcld8cFjqsyFoyB3L0naxnGyWmsUiXZD2dBmAoOu+uQwRpXrrQ3eurrfBZJEkeaZpmmQzK+vCEJHw8Lv0EMDGIpPfhNzqVJ7tO97GSsV27id9omzJlKmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AJQnTTgb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AJQnTTgb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1CF0C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748975993;
	bh=RIhUpRZVdtuoztkkQw9bVAGVBRC5F1LJ/UqfWy8OIeY=;
	h=To:Subject:From:Date:From;
	b=AJQnTTgbLwZlB3WlDl7UfIXsjgSnT842lXN/fIdXBkof1KGwxR+Q22sLW2NzGHEAg
	 t5wLAMNBD+8urtA4slNVfInOMkq3J/nhZe0wLwLOKOqTnpJYnORAXKkT+5sqeYhvSR
	 e5h4xJJM6BJ/wjhvxxhKYyxCvL1EPK5NhPi6tRss6Moenu0cvIOjm4uFiYNPJL5fGy
	 s4IT+MRGOqTIAhNOPpI18ZGEWutvP5eUtcttqC/QS+oQeE3YJGubJ7odSQV+sGHHEV
	 DHoA9f38ENW/qQ0HWMwlGyBxq/3dC3E0ZxQ9ZuqqUI/u1czzbjmlHeHtMC7BrXLUdG
	 OKgcnLBlBhvvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB83FC5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174897599368.19634.487873744879147360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25168a5dff5b291cad16a37d14f515aeeeed3a401e4522be74693efa93648570
Date: Tue, 03 Jun 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748975993
