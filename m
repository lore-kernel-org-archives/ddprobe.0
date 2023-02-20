Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3994AED0
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 07:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B1EC433EF
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 07:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676879285;
	bh=K+4YaWMFibXIViSutGXAezqa5LFlV2xkRcdfWYW4Ets=;
	h=To:Subject:From:Date:From;
	b=E5aGtQV/WAcZhukN3esFpi+VfU9b608w8fNDnvXAhqcHFXFnLwR78zh2upq5//kKV
	 zj0KHJgqeoxxSKrWOFcrrRELn126P8/WT/HohdkGjIFRxcMRDXEDTSuzD2Q9TS4efN
	 q66xYl8rKscjs3ySh/PbvYZAXbZmi/rFJXePrr+KHaD59ZwYc7mBJ7znrehyyQJLS7
	 PD4sK/rMcWAi+DyyyLQBnkWo+oOvrAHPW8SuzRFmHk16k5jYmPBwsMuibSZjXotGbk
	 P/zSWCcFG1RMw9hme8lUkXF35DibrvGqJdEWdoS/HjsOz0FLMXGSDY/RoWQ2bmfUyF
	 IY3vP7fJIS5cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAA27C05027
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 07:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167687928575.20880.9746546263113095844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e441d7b33ae6b1a4e16329a99fdf3097ae83a01b857c3fe5078602f2e38c7820
Date: Mon, 20 Feb 2023 07:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676879285
