Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0D1020ED
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773632094; cv=none; b=bw2cdIfRm8omc/+yRp8roskbdr9VZTPvla79HJ6ZC3R5NZeKDbJ2PlCk6ABz5uuRdBpsNAwkXqbLj4O7aq+FrI0ipAOER2p/6qaFuhpfQFT4pLYSUnZ+HxcRYsrhUm/K3oH561pKadcaSMY95vmdM5tHnpAJBrA5AG2MpMe+8F0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773632094; c=relaxed/simple;
	bh=Nv3byr6GP8ZONriTDTp2qRY/OVgd9/f8sN4xL8jH3p4=;
	h=To:Subject:From:Message-Id:Date; b=heKaVzgdDeqF5VywObatiNgzzCIRAQyudO2YJES0WUMq9mCtHpQMTpkDMD+O8e7imd2LjDIOWn/oVJgSrb0NqRJEeR8gR/Dh3GmOQyh7jWXYjDOEZ7zCMwbcuGnYk7Nf3Cn0UPRLHwxQFHHxZU2cj2jTGWjDA0MFfkcfyEEu738=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EUXoogdx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EUXoogdx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA92CC19425
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773632093;
	bh=Nv3byr6GP8ZONriTDTp2qRY/OVgd9/f8sN4xL8jH3p4=;
	h=To:Subject:From:Date:From;
	b=EUXoogdx5FrxkE8I8aOO0HaH7RjCKcJFaqqCRZU8nrhoXTiBUU25zYZisNkDcejwx
	 OokJKwcCDOz6ZexFSbYq3WsDH0hiCJ5m2CWBa2oCwL6wAtt1m6NkXwcnV0G8o3Akvw
	 tmd+6YzGs7l4seZY8p807eSkpGOfVfM4dp4PasiYSvoH5q14HXyOnWgiWlXQpbipuy
	 1E0gJmfg1//0Bjg3TnudjMbHYigzW+cImyVSJfRpZgNOmxOfYCKeQ0Ck9HN6QRmxWK
	 3vljIHzJh3aCk/2Q6YLAOVhZLC6MYiDda0GDgGNGlxUw28HYwd/uNuBiPl+eaTLwOH
	 82cHnpxKUJbAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DE6C5DF77
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177363209358.21264.12531962024963555745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b29c939792892d78ccd76604b6edef6fab3ed01dc546c217abb963171194e75
Date: Mon, 16 Mar 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773632093
