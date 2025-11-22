Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D1036D4E5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 06:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763793114; cv=none; b=lYzsf7q+OQvldVAcyZ527S7Bbx1LRbIL8mUMgYuYatT5OBZZehm3P1V+BDWc3e4AphOPf3lKu7UhQOLmKb9xvf10uYmJBK2d6xO17rmm6I3jEIChedqYolLkkwaT8o7rineQfbCCnQENXdXuBW6kEK7LUutU/7xg69mbY6yikyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763793114; c=relaxed/simple;
	bh=QcySmh+YyphI3xbHCDdTaQOSaCHLzzaeOmZY11lIx60=;
	h=To:Subject:From:Message-Id:Date; b=kxXwsMcbFexWyw+e7GuNJN2CT6LgC1heR7UwQ2jI/0f13Xy6SrQtb4T7JkJzRBc7MzaoffMhmlB6S9AEafxtikDgVaV6hLeI9amR+Rw6nuC93GUpWF/XJZLzuBrV4aCIVSo65wJsfXa9uRY8p+HyIzxRC/Whbwy9cd31lEsT/Ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I4GT61Yr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I4GT61Yr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F4FC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 06:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763793113;
	bh=QcySmh+YyphI3xbHCDdTaQOSaCHLzzaeOmZY11lIx60=;
	h=To:Subject:From:Date:From;
	b=I4GT61YrzlkL5FRSCfNGf6hhP0XCeun3SQmOpoG05XG2sHvmYeo+USwgi2TTrHjIx
	 xdIwW7DXtfQQVfYCV0PG8BOWiJS2FvJQcVF/RlWZiP/igr0aW1L0U/Grm/zWUaqMNa
	 StUP6CRmbGZZsm/S5KkISUgQdwlEzYJh2pus/DfucReJqp8NXkSmpSR3h9sb4exAJQ
	 x3BPaYxCbpMi4UEo12aZ0KT1tHsz51DC15MNyW/D9mL1Np5ucG1xf9brYk7UzKqQ15
	 2ogEkJcNqB4g//UPtATjmCx6MXtr0mEExBwDqu5yqahKEgKCo5+WyWksHOLKy9QVrG
	 pa/V1BgPJbj+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BE5CFC51D
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 06:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176379311359.12302.11936259662287078465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51510838f72396a1299acaa71449070fb04b9f81428033757b71a85f121d1fa2
Date: Sat, 22 Nov 2025 06:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763793113
