Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A5023313E
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 02:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763692914; cv=none; b=SfbmByIec78FU8sUjuBBQ4wo+MFSoEaP7UHStfvhH2iseCnRX4SrgLxM0PZVn26A6Cy6IhGC/mWhLhkNS53GvBKwj/PcE+4pJY7s56X3pDN192D/LVeatMby+kfSY/Be1mzI/HAT24pxHQOe+HAr0xX6ex/q8A/t0lZpAB3Sz9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763692914; c=relaxed/simple;
	bh=+Y7sZJ5vlYPAJnPIsLJz15QocOh6rJc9fMCCPcuHwWY=;
	h=To:Subject:From:Message-Id:Date; b=rbmjdoELUwvzYBHFBpoDEGV/lgPbT/9OwrQb2mBsKVMZQAKIYKfj/K9GFOHcIMIPXaiojLEqUoZ9mYl6iV0aY9bkbzFouyWZKbIHRJ+lYYl48FqoJh7dgnCbBVJD6SKMYa2VXX0y7XbJX+ybe8BgIizUfezRwVedkh31D88kSD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c/2EMv45; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c/2EMv45"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B96C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 02:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763692913;
	bh=+Y7sZJ5vlYPAJnPIsLJz15QocOh6rJc9fMCCPcuHwWY=;
	h=To:Subject:From:Date:From;
	b=c/2EMv45Pm+1bnNg6RuVMwA1GmtwFyhhlUaKROMIqZH8bac9PSQ9YYtEUsU1vtk/B
	 DhjhjBeODU4WnM6wRKcctDqpKuzr67Jo7H2fCYbdvRPwMduI/gSB1CJyCm8hSvNrKF
	 f7pF/YaOQYfOI5X8ixMPQayejJTblWLPjnMwvrjnaF8CWtAP+er48xgSiFsLr4ACe7
	 Ehxg0TjHDI3Gur/8tftfLWJ79IjcwJnu4kymYU1mu63xE5xEpBbzJou6r5z9nhGupA
	 ukoqkLxHmaGHeay7VYU0ss4BGWLmFROZ+7V5HXB2TpM6tDnqlSXdPSXL4IPuh+7GNd
	 DkA0S4sHAXvVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FD4CFA46B
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 02:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176369291360.24285.1990114781566141213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc686bdd606877950101277e4f37e8b4bf273bfe661199576e846096301fb254
Date: Fri, 21 Nov 2025 02:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763692913
