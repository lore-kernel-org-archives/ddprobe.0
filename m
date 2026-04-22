Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33FCE1A683E
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 01:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776821854; cv=none; b=CrMJpdVxZ28iva5n3mO+kg8spL5wZDnL/Ukkm5PsholyiWDTW4/ya5DifC5CUPoy4Z9laTY/O5WXiZ8S+ZdVeTUitLIWiZ0sTzvAUQz4sz6tJzwFhjMq2HVNNKz5j59Pe/efZ4fwwKUUC/T/7LaLIBf/Ls5YHegHmoVMX+4o6vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776821854; c=relaxed/simple;
	bh=aMcmHJufh9KBiIy/MeNquSyQ3I9QB0lRa68OEoRZ710=;
	h=To:Subject:From:Message-Id:Date; b=L+rqicaU0FD0VFy2VtbwRRWjDJ8LtRNrPD9BnaH0/5j+TQbS6thLrCRQSvm1/qKlcD1wtdzdeMciU5NRUTS7x7OGIC1f/FLOH4hCGKRuZD0Ri5mmIPvKbgj/XdhDBkfIqH1N2k6xGZF6wUbF6oYt6Ci8x3jJiWQVqv2XFFTVWmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b5sq302P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b5sq302P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0173C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 01:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776821853;
	bh=aMcmHJufh9KBiIy/MeNquSyQ3I9QB0lRa68OEoRZ710=;
	h=To:Subject:From:Date:From;
	b=b5sq302PZ2SZ6/6aMtkemSLJoDM3InnOg5qhNcgusuB5PxMQXcA3+5W/xsjluc8ka
	 zqQIpaDzZ0wfUHv46zEhnjqLIdWUsjRLi99hXhEziysxG+8LVDn/a2iM0mQ3IUVOJu
	 +dE93jKSadSboh/Xc8mpQlPg1EGRoii3JJ8LtlNisEJKNyHHaAqXqeMHuFOdstB3OX
	 MVukaGxmFCm/onvgf/n/fKDwytBM7QhHftcEFVwDjFbL9hLZ9y6hpChK1611I1YHoH
	 Soh9Yc0bf+SJUeY8nWTF2wZzKAw9gaJOeCmEdM8Lc4UeH2jfqPgDGOYtHl/eC6/Mue
	 ce+zIo0VaRUiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB30F94CB7
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 01:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177682185368.1477.11595725706912478004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bbc68086d7deb5ea1fa9f77f276c3cc69809df0ef1238a3a7ab59d01004eed9
Date: Wed, 22 Apr 2026 01:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776821853
