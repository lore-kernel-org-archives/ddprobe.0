Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 310043D64
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726928154; cv=none; b=TG24qaiAobffLlvde2SR1NezgGyizQlTXvilTUef5mIzlUqX0wSqKYx9P1e5ZS/NevGBDxTCj+bJrXFX8q+UHc9de7tR5Zz82eUBNg52Yy3SzJGgZzedEbXXkr1DlJlBhPCZm32ehcrSTxQeIJ4Xjdl7zW8UkuOHhE3NWOTyPe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726928154; c=relaxed/simple;
	bh=Ywx+7ugKEQ0FtdpjM+nehPqtfnHvnyG98W7bKvdrExA=;
	h=To:Subject:From:Message-Id:Date; b=XzhdS5YDAzW4oHDOOJQCB/0HyRlObG/SsUZEzWgtE8QRftFZDqEDlIDkqIUBy9/aulVFw3Bd/nQVxIvlwEgV7I+6JEEV8ls9J5h4wPdMIDXq9pFLVpVTJoAU7js6aqINWCAmpHVM0IqB75/beU2w1+7huSIbXLAtbb6iLaoIFBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PjXbO8en; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PjXbO8en"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85B9C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726928153;
	bh=Ywx+7ugKEQ0FtdpjM+nehPqtfnHvnyG98W7bKvdrExA=;
	h=To:Subject:From:Date:From;
	b=PjXbO8en54JW3HGqTeZW8uRMRrDa4gZGtOhYdGtHdYBO3svG2ojFKIBT+4ir6e4Bd
	 sIaKFoe5LZdZRuTnLIjDaG+L9x5eb61PFk0WMualiISCOWBlfLYNhn2V+ucydCURf5
	 +lpnac5Ot+/nVnS9vqu1uqUg16jg8c9KQ0gFx0dTY93jzuHWQD9ln2ugB/BRUpN0un
	 Ib1BwnX61B4rK1vnYxX6L+cAba6Q7HDw1/8yhwr1E5r+vL2Q3nciLvcfrkxdx/rmyq
	 DcP40Ugh2Kw8gofXvumOwwiMTPTUfRmvv3b6UfNOZWEwGYzdhO5+PN7Dno9PMz/liq
	 QpXt5hK59A+hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F6BCF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172692815357.32603.580403845424370704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ed0377530647d65bb56c59158ff9845163d4175c754262466e6a1a242e98963
Date: Sat, 21 Sep 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726928153
