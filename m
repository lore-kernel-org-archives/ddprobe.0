Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA46925A2DD
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771038893; cv=none; b=AU99Cc5hCBDCIGnzDKghBKlKRmk3HbFunWXHwKYODTmgB6yK/ndw1mZY9BGcbobRUbF1QPUWtco4RAnwhsETOIkAbUEZGA4XpNMW+Bc0wXxqOcimYJtgk8hpqMD/BvIV7zhyCTQO2L8V3jEjPC8obzdQz2GEzETYavfQN7BAOSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771038893; c=relaxed/simple;
	bh=D2obZdpb48Qf76Ym8sRvO13ZskSFvJ3el8lVim/n2X0=;
	h=To:Subject:From:Message-Id:Date; b=ePrhZNBIgWUjBLxC3lWtuEOgFkgNsWl7EVuZvHmDk+VMBSC0xpfPKbxThKwxnLHJBQ3uLVqDVbFxOeUZ4+EOqmvFtG2yO36lpDSC6DIRgGQ452AZQIqbo2uPOBScN1DLEAKOkd/c1RwW3/2v8GIs5aGUo1nNIyEMql5dJ6s/szs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PNu/QtkL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PNu/QtkL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A470EC116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771038893;
	bh=D2obZdpb48Qf76Ym8sRvO13ZskSFvJ3el8lVim/n2X0=;
	h=To:Subject:From:Date:From;
	b=PNu/QtkLsfWGibsvbZfDp4y1RHl+7YFVaFYzke2h0KsqHzlqwojuOxpV6n1+wTH6X
	 rL4qpdFJcgAqXFo60c3CdDdQXK+0x1etmh8UO/mlRDLdeLHnjs1agnh1pitxmuK9g1
	 aVhzbRdQGnVZfB/U3+NU3Jyy4W76nHVwj6EQ15g1RditqO4NU4Ysmb22/azuGBQ3L8
	 odFCsXjgLC+cknukfQmxuaj2vvaGgWrKYP4xHz/vQOya4p5oVp2WhAL/viZv0tyJ6d
	 Zeu+2xmlY7HJIUjfAss/+ASKqIZY2LAOQ60sbxELsXaqrSR1uQpGdfJkEi2yV/IY3W
	 ToAdVbkOk7+8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B59BEF99F3
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177103889362.27296.14118590062925072073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e84770114889a713fb39601be4865844728da92ecdf8e05724c10ed29c84b1a4
Date: Sat, 14 Feb 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771038893
