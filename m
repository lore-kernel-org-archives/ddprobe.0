Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41EDB15A7
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 01:20:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E36F0C433EF
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 01:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679620805;
	bh=sP5HMWcZ53zZ+n3FbB8u6Rm9OKbD/ZdkAVBJNR6CK7w=;
	h=To:Subject:From:Date:From;
	b=WKbGN2iIAr0gTubPBbLIW9/P+NYPo/Seh0+6IazZuMazi9lWGRO2nNw2EAPPlunNy
	 PTIbShQZZEbVdZl7B3qHI3AgWQ7pgrY92UR/FgXF2DgfsQzYI8+0qOX0hzu0aPT+OG
	 5cMRABMBPGYCK1KyAjlC/YDIDD3uHcADFCtlgHQN8xNNMT/OFV6FzgVbPiWoYqPOlM
	 HmgDZgIYTBhWS9LjYoag33i22tCIwCn4/2k0Aa8XwS0dJJ/oxtzeoc6qmEtjhgr0iI
	 /f9ym00XM/O6WQtobzAPzp8hN4aBFh6rQLJ3HOk/j6muwa1m1sOUCfip9o5wNRImY5
	 Q2sgMH8GUJRGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6645C74A5B
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 01:20:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167962080576.12483.15587465912832857278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7c901b2e39a3ccc7616abc5556b17b4e4e856baa826af442ec7a49c0848cf0d
Date: Fri, 24 Mar 2023 01:20:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679620805
