Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 564201922FD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742296794; cv=none; b=vBskFzxls+mnigqoz9VhmXQ7GI3PbvYYxiLfTJ3dAZC55yi927F6dSQoTdg1/zJ5h4P4Ugapknwj5If5QW4jVCr/97mbwZ5wXQfzLLN6ofVTtQiaXpU6pKCT1ZEzVHP+sam8lgqoR+wMx4RC6muW0vUBTK+tjoq7CUOiHdPiA5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742296794; c=relaxed/simple;
	bh=5XAcXBc9TbgxTavd5Fgmg8gJi2XKWBhsd+K2hsjQypU=;
	h=To:Subject:From:Message-Id:Date; b=PAXnvscVSos+IOJl+621CZ1DokPyMyCs5mol3lsips00EL7558RQ2mueB9P38VdgXpCa/k7xWwGCBeMjVc3Ji7Z7kYq0j0YbWqa6oL6imoGIe8mtVQ5lbAIX5ECBgHH9DxcQw449wzc9lE9Tgv9uXs1FCu3PTcPcyLzLyK4aXBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pJVKXKy9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pJVKXKy9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCFEBC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742296793;
	bh=5XAcXBc9TbgxTavd5Fgmg8gJi2XKWBhsd+K2hsjQypU=;
	h=To:Subject:From:Date:From;
	b=pJVKXKy9I5hTKzhMVNOQ9xe9SEsVnfAw0MH0L2AsPnWsJF5OgqAFbUYLKkSvFwpGL
	 Vn5NEOd5iweX53AoShbgR9278rABO79MvZPvLVxWj2qLhKyIBajeVpr7kZMWTBIqM5
	 bqHhXQxqaYrDZ5sUr3Ony831TA/k1YToKnYgGHL0zZ2jI9mvcWqz/VIRPGRPZbXCnZ
	 bSpQOiiTqPE4LWv/t2s7WnlMQezmr++sVIQfeRz2qytZlGEZktBPKh+PLqUxuHshTk
	 4JYziqWGM3Jno7XG4rXFJpv1Mp6MmzaoL3HANIrpVmm8L17u5vQJcFjGn8RvZuf5Cc
	 RpBGt/ApEpjvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7353C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174229679366.10115.6941241732164925937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c5f2f54290d880a6e8121874499f9a023388ec504be5681bf0b908f21d59d31
Date: Tue, 18 Mar 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742296793
