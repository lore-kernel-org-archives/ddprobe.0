Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44131111A
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 06:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ass0DX4b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97A02C433C8
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 06:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697870296;
	bh=aVWf5Si/zwnquYTROc/Vr8GDz1YtjBhmDJP85Q+zORs=;
	h=To:Subject:From:Date:From;
	b=Ass0DX4by6IC77h9rHJLqMO1eBEYQsQEIIpETugZJTfKmWv+1sftR6zTON6LVH61Z
	 wN39J+1Emj+fEZVTRzibm04cuEXoic0NXmmXjea1V/WKG7P1kHTCfx2c+4803jITOU
	 dktx+TLrueC81ef0KrmXZhCH8aZpJ/kMQwGHWdfOLry9WVn0eRaqZxMtnhfal24rlN
	 QQ8NCAdCX9BHnb5kDfGyTig1lZv93TLKoNxNxNsxibWd17SqmU/mni6crpK2JXbCVo
	 P7AdNseATyhbtu74fQJAzqXdLIf+OsE7ndByMtAK4f1roVZg0XfiLXmEH1M8JHBuCl
	 aaL8OhIMqHFjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7580AC001E0
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 06:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169787029646.1832.7907528165044531800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dde6ac995f22c05ef2bc4a15265a5128a9fcbb0806050dce64f093a03d9f9d86
Date: Sat, 21 Oct 2023 06:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697870296
