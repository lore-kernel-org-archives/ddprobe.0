Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1B1F3D62
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 22:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94E9DC433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 22:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661554252;
	bh=G8yl+Cg5T6YnzIqXX94VI5388Z72ejiR+KdhHHMXa7g=;
	h=To:Subject:From:Date:From;
	b=iAk+78BcHgVnpkod8qvgPonhCcrPR6dN0cgeQK9WF0Kk2HIoyyWMm9lQ+Vu4QNW/d
	 ygTusnE/VZun3W4D0MPny5iZ6+bCBD8CQnsVMhYNODnZ+okVNzBzGIYFBW7QpdfkFG
	 4ScyobDyehAUTz70Hn0DzY+I7+QXAC93W093yomH7XSP/cxdqWvJfaH2Y1mzQvz57m
	 5BUYs3U7988SvVzsn5zzwiF4jSjBLn9VO3L+qJTN6W93lTpuasdvXlR55pcP+DXCcD
	 T6xkCJKnT71ex3kyrF3ewn2zpg4qFwy/8x4LmkJvj7oI9iVE+BKpkccxNYTEssW/2w
	 OLT263znlIz9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7AF7BECAAD5
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 22:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166155425249.2236.8828173461853802107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb162feeca7d11c44a140d6fdbdf961da777024db3cf333cdc0a3bb5e849a29a
Date: Fri, 26 Aug 2022 22:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661554252
