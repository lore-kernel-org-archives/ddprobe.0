Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7CCD33EC
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 15:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BC35C433C1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 15:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664292053;
	bh=VwnleE7kfMAiejzg/i1ojBfigi+I7r1xwc6lWZvw7bM=;
	h=To:Subject:From:Date:From;
	b=eh1QK116+P574G4iVGjOEtwE11blXsu1fWTfRiLs2zLBSKOz9bXzy4J4mlqJF/lRF
	 5ICi59nbOEvTOiPEUxoKOqd3mHhFcZ/s8iKok3IeQxzz4BFjw0oSvuvEtUVo7uTgVu
	 miHP9JexuZ43y2qWNRbTLhDXtOzkZWpbRUK7vRAIMCsmZxEvyaXnVL8FgliZ6F03KL
	 ztMxXz0hic7tBs7r+48lXM9h3i08Ffubxt7tnhA6Y36oiUW5FoNA5G0883eXsTE/H5
	 c2DxpOzvOQWFbsy06OQHrG3cQPMmiSyoVnKGcEW7prQEYebYvgOY2Cz5MuQ7cb883j
	 QJkZP8023AwiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54B6EC6FA8E
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 15:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166429205333.14369.5703650591908040223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 017d6ef1f0e1a55ca4c4693b51a24715ab28467abf10b8c4d2568866f9bf55b4
Date: Tue, 27 Sep 2022 15:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664292053
