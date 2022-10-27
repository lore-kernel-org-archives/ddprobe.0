Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDCA110EA
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 01:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69A66C433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 01:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666834254;
	bh=Sr+KtXsmPbK52/PhGTaKqnLeB3npaUAlkCIXKxWqfh0=;
	h=To:Subject:From:Date:From;
	b=KFULMztsc2aYvPGvhDDHRJoi7wZGJdVs57E9JG2fLAqXJie8/EzBFSXj6mrLpxXMC
	 xESvrjtA8wXhic8xLWouF8piYgjbGfhUew7Vp74Tu1CRB9LjzvFW5oz5sPzk2+UYEy
	 +TJpqA9WstAb115u5pOwW2iVssJ3IGYE4lTFxSRDy5c9ykOhll6fBdytVdEKy64UYX
	 kKJjyB3zrB7OO/qErDfR/zsVPfFnHK1XYEfcbB3cBUXFnEEYpNogEMFSTL/SFkf077
	 RMXzIaW4olRfwnLhhq1Nl1Ip3cMkgjhJpgfaerQQ6CKnLe5J7ysdTb72L3TV8b2a2b
	 kb6UNIRZHwkWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51AE2C38A2D
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 01:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166683425432.3030.8232057119941637528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8218ff50fe41dacb2316eeba39d2220618bc06f92668e2663edb93cb658b4e7f
Date: Thu, 27 Oct 2022 01:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666834254
