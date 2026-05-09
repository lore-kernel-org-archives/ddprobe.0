Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B4E2128816
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 20:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778358454; cv=none; b=ST7EUtDx2G4uK9+PgaJRO4etgKhCim4cF7PWtonRa90f5vs6VLjnyzGgf/je5m5fCr5G02kC5B6CRqxc7+MJ7xYjkyiSTDImrLBbjtbjIvoKN9jTAKxDK/f1ZO5al60YbHri3uHopqJ5op2jqxQpizKpKKLWNd9b+DGdZ1roEW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778358454; c=relaxed/simple;
	bh=dAECQGFZijjLagxsFUsB5F7u67DY1dNVa5RXWn8h8ek=;
	h=To:Subject:From:Message-Id:Date; b=tn78xy8Qo6wKFJ2I6oYMcm3cpL/046RFswPYGCHTPIwSQg0Mdwtgly/3ROk6oUEvcNhOQ9zzExgmbg3l8QJ3xBQm+loXOC7xpjMx1WMnfVr35BVGtehApsuj5NP9rLAEQLSb9F/qBWouwMaRGz8ur6UWbHGnt3zOnlZ2HxMcL3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XqG1MArw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XqG1MArw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1D45FC2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 20:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778358454;
	bh=dAECQGFZijjLagxsFUsB5F7u67DY1dNVa5RXWn8h8ek=;
	h=To:Subject:From:Date:From;
	b=XqG1MArwdpGgWoJEUhrPubYKdG+CNrqlU1Jfx/jOrd6JxZj7diA8h/kwrHlx2M7II
	 pRXrjF0qvAt61kn1XCe0KTAc03/5zQYzLQM8YjxDmh6e/egs8MqQuka+VxAosmLy2f
	 j93NZ90IMECY2oHjalEU18cQn8luAzqvtMpiUEjI1qg8SAReLae0TCvSZtv7yMg9gb
	 b9YEyM5QLpKFniZVAXroNlRjFPrcZcmqyqB5VPvSySdedJDozjl3Vt0kvHdHCYpNdi
	 YlaMUlB3rjfh1c9D/yLUAJnvrZ6qXITJP+OMZJ7+nBgjbFMzGjwASBbhVpYyxh4J/+
	 iRfpYRbHaE89w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D349BCD37B2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 20:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177835845383.14517.2569433881541742475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 348e517e06491fbf4e39984d10b09989229dc8dee44174180d837e7a7ba21993
Date: Sat, 09 May 2026 20:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778358453
