Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2EE1E0DFE
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761842994; cv=none; b=LYkf1XCaywRuj2u/YpqXYCBgp0qiyZwhLbqaPuAHTM5F604q7Jl4+WBHZ6cZyJF09Xsnqv+Iakfhai+evKvMlLnnUUG/Al44hi4PNrpJfa9TkA4oeAGWtjpIMcT308ueeqqYHm453OyHkBudGJPE++XNYXmF0F5v+IvdsGQPPgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761842994; c=relaxed/simple;
	bh=zjjzy2XewFVmYqw7NgFRhCvv6CsoSffYLaGWfMkAHgM=;
	h=To:Subject:From:Message-Id:Date; b=B1Bss4xtHA6JYH63FvH0DIJrASdw7KBWp1/IqtjagGRlAiRYyR/Qhu4OzFT8pJcv6bpbpenRzl+NCngxJMKwVM8PHYuSledPlkPWoFHAh+CHAwsUukHEtZrSrS/XZffyerrSM5L0bhAaR8aXQ9EebroGthdAlsB2DXVW5iCPpMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dWO5Jw7O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dWO5Jw7O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF59C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761842993;
	bh=zjjzy2XewFVmYqw7NgFRhCvv6CsoSffYLaGWfMkAHgM=;
	h=To:Subject:From:Date:From;
	b=dWO5Jw7OSE6r/qsO6sICRRhtyGOwQh2nErGjDUOMSB5yY80VJfuWRDD0wKByAxtLJ
	 Y1p9EamH1f2i92LdDX49J8f6jBq8qoVVvamSYgiKPbemdYT2zY9QLgf9iPkfN2O+V0
	 uUB/hkjtd9KuxMwxBZ2gXisSkKhSUcjL9SWzNidzReNlgtJuaDjWSreZJn39DGag/e
	 9WvHH8Vuf9xZMH0+gxVtPFKeBiveVw3A9QWPGwjHEQW/FoiBMGPAQ4TgaLrV9MBf++
	 TKQrZOEUTKgCQePqJRF4HHISFODMFlkHfirhkpRemx1wtHvNqOewyLVUmW/Od9RYxo
	 DmUFxB/MgnvIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A29CCF9F0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176184299358.23606.3156466579696444086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fde70c4048640fba88a6f37c0d3b08711f77c8fb65b4771165ba150759b77327
Date: Thu, 30 Oct 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761842993
