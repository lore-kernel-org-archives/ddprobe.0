Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F028317D1
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 08:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dwu/ykOT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C323AC433C8
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 08:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696841228;
	bh=lHdQ3GbrvOkKY3KQ4fnFy5yC6yar0q2Y89HVfa/EcQI=;
	h=To:Subject:From:Date:From;
	b=Dwu/ykOTFU8WIknbub1k1rElb6Z8ZS/ReBSL9lb24zm11PmELWROiA28s5y332Zjh
	 uFaRcugkO9Ck05ab+5Uv0+vFNzmbXZexh0uh3s79+OueGgKZMKz8r2XcO0sKp6QtOF
	 cdfM28Nmcong8Lk3I7IqO3jGY2SgX/3K+NfSkPRjkzQIudiB9PBTN8UpM0ZMxUjyGI
	 oJ2qEWetxzvT6wfkJin5f/l+OIh6EfT9meXwE64OADXwskbhtrrONCc8N01jqhNf5m
	 MmiWHgtk7RwcnEiffEUPL+vNd0DpYU4TwcMmqWdV/DET/frrOFmQNnGBTIjY014XCP
	 7qEFqgs+8SMrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A873AE95A8E
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 08:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169684122868.6556.315440483940545174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57c6d0771d8c780b745f993bd8afb48de4b07f2e882cdb5dce0d095179a872ca
Date: Mon, 09 Oct 2023 08:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696841228
