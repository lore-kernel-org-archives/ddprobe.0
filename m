Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF8E4813
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 18:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97E89C433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 18:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670695287;
	bh=w5DCkRN0WyZbw67E81UoNLdOKfRIdHnY9pkwARXHTOk=;
	h=To:Subject:From:Date:From;
	b=pI0qkQweuH1hHbnb+wX77isu74ZuS1o09cpXBvPzfhKKLgjQg+A7iQV87JeGFV4RE
	 F7PBbWexdWWEJk/647hyczeG0zt26xuJfpZHCAvhSnlwdNepGPLHOq8c3NjqiGW9WS
	 ZlTn709mDD2LjOKTadOCe7BtorEHV3SeqEGfdVuc4VZxtiamUSQk+O/sZcUCOdZ3lc
	 9/zJwJZeHS3Mm8fj/+YkKj0mdR0KBxA6/o1Lt7lCLDRGexoP879YeRM219ZiaMlbPb
	 B0NI5rOyCJY2mAxkZb7+4Wz8TgPO2j0E+Grc+z3Zx7O3uHVvx3kpHg/sfhJPXgZr+i
	 0pkmO12iPEHgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73D0BC4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 18:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167069528743.18750.528192260337473906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddca0e703a70c9e44fbdd1cf37a6077c660fb1ea5bbb7229ebf56b6452876bde
Date: Sat, 10 Dec 2022 18:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670695287
