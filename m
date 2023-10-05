Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64622EA9
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 02:06:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J6lLjUpR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB50C433C7
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 02:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696471568;
	bh=OI9+0EjDI5HmgfSwhEhiKv8EaXkaiG70F+X/Kp/qdFI=;
	h=To:Subject:From:Date:From;
	b=J6lLjUpRC+d64iNtKGaBXZKerGI3thRQh0QwTX+WKhDj2c6Fi52D1zpOZSEH7bXyU
	 tRe9FVJXjub/MV3IojEKGipgFDUaZAnKj4GOWN/7LZOojZ7kl1si6XIaQ7u7DgRaVk
	 oqyJVeHhHrKVgAz3ywRHwEdw3nJNfmNuruH1uf/RsH+bMWrcX2fC1Y6XQ4IMdDVBs/
	 x/+3nBPzFRNRj5giCJZBjac2He+FV90Sxqa7O5T0nHBt6QHTvVRwLLYgKGhU3WYRON
	 QMHIn8gE10FsNrKlNxVmQoYFbkbOMvdy0QGTCb2OfSl596kmHjS3i1ELL5H+TPJnDr
	 iU7ne8DPCHFEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1350E936ED
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 02:06:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169647156871.13607.2917450942778450324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b93c53cec4fb9a1d7e96ac172f294a8cfe0f638eec93ce3a462ca0c9d3f210b1
Date: Thu, 05 Oct 2023 02:06:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696471568
