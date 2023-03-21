Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD938C04
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 11:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC07DC433D2
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 11:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679396885;
	bh=EOD9ofgjBwBIyT85n3+Apgq+AzwfKqFWNV+3TaCqVL4=;
	h=To:Subject:From:Date:From;
	b=qC7DMKMlSKKaKaa5/C6ALgcxVclQvWJfSiECmlwvBTj5Xk7yEdLPblro5+hUIDORs
	 sw9Ljr57Ud0H16OqrXqJtBY9KFUPEZZvL0U+CNvnGR3XYmXKLjA0MET+cWFIocZkgf
	 0hthP2NiTrZCfuIw2Y9VVu6Lj34Z2yD9H219IBZxaA4IQWu6uZ+kDF6ecTmPP80JS9
	 4Gl13AhqSeFFeCVggMAPE9ZGqRlH7EMSU/BLnPi78mrg6kbyuvJLtnk4T7WQ1nYEN/
	 5OjhrhlNhZbhyhB6lIuOvIUu0/y2L3qk9HE45VxGesSWwdef+S2ogpkkABT/QIzv59
	 MuR9GPVNAA11Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3CBCC74A5B
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 11:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167939688579.18066.13767159724862691826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae9fa2ac917faa47b936462896579560f5fe76fe099e9a6faeab3585c92e4bfc
Date: Tue, 21 Mar 2023 11:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679396885
