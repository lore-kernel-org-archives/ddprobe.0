Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462E7BE60
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 15:47:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9104C433C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 15:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688744828;
	bh=fw0ZS897CsiGFhEMjMc2lSJLA8Vga8YAsM1y6ytDgyo=;
	h=To:Subject:From:Date:From;
	b=W06OLkXuhgYOx51q4PuNVERklTtv8q2eDBkgbQCgJuKlP0C8gkWrmMETK6bo4kN1l
	 utEJU3aYjShhg0rDZzd+Ii0JXLh9gAnEOefkvicrNyRf0e3qVHtOcWlaFaxFAoi8yS
	 jNPldEHbxQ616qn3CNweGVyI7Q3aRy+X4XbTyXeVwZHl1aWvkfM7jVISEQ/af/FStG
	 28OmnfUw4Q2sDkDAK+rwueT7CTzHhEIV8xBPyxA3PqIEbh/OBEFxy9/1rKyObef7DZ
	 xgIBJeWp8OlXE76RlZKUE2lv97Z9OEU6h9zGCD8iDow5GJzvbTlteSMDnzJzxBBGrW
	 yo6DZsJEk64hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8654EB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 15:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168874482868.23348.18428550219931082582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e5ec6d05dac1da6529471b3a54c78207b40e8ced688d270f8fb368ca25fe241
Date: Fri, 07 Jul 2023 15:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688744828
