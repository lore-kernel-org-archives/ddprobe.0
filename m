Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A5F51861
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 12:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6126C4339B
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 12:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679317025;
	bh=vkxKSDyTdFGp32iszdtP6yUnHKNZXMI7anFYAqaaabI=;
	h=To:Subject:From:Date:From;
	b=oyjoLRqaj1/phCMJXI52HR4GYLCcIc9PqhogtlMaqUU6ECiQPQdEpIo1+caLrn6zS
	 X233JaJSygN7GA3QtsApw/oj+y/kKjSLTUxG3KxEhbf1pvx699QkaauJhp8v+keMOb
	 do77ayT67SbBUD0W3CDZQ4M4UzO+WuolTwhkgYTu1Z/Ank+QtaLjsQectLr5fNRnY+
	 zO3+SORZYundrN2u5QmEH7J2XE+5lscDOVBbkkD1WejkPxDQsfIVmRnXb2JDQZ2vhy
	 uLDQR2LL60rbQ1YiZRo3K7o+2fDhZsrjfWXB54J5M3S299wWEm52x0nkc+oS04NViM
	 GUvm468FO6Edg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFBE0C7618D
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 12:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167931702577.1165.15221912116125173505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77534b93369e06efeb8903523c973f867c911eaa2e2b8c9f1701eb765d633018
Date: Mon, 20 Mar 2023 12:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679317025
