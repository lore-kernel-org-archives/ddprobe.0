Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66E37253CA
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 16:11:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB448C433C8
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 16:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689610268;
	bh=jekjQ8GyQFAxYQppHxCvmM+gEHXdLeZh27xJ3NYo8GM=;
	h=To:Subject:From:Date:From;
	b=fINT5o9j9lsUSH400BBDhP+kenA1ibKEI6ajoFtdukl5fJr33ifkgl9fHk4hfVUoW
	 RISAks+rd0hncPcrwR/BVmjYuZHoUM/Oohd3TqMRjsLj0f7eFruYrppPXb5QX6nwyb
	 8cftMg6tkQqpWN27P9c9UwZnYa1TqYZ/BG0CTUF6Kw60wYNWQoKMmWYX1xTTj/4ZGe
	 GqZjIeWz6QQRoUjWmqvc2fY2+z++CpIY6Cbf2Ps1A3Hg6p9OPxJGEJNaG65oBePOk6
	 eFPC2HXUSYEdqBWRapfg2gZWEvTKK+gq3CnXLKEghfvDQV4PQfHRTI1pVWsU5+8DYx
	 SVFC6TSmhuvBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B26FFEB64DC
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 16:11:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168961026872.13843.5591378160642145466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 747a61b8602a7889139fbd57ebb77ea8cf2ee2e1190ec259db952d0f2584d74b
Date: Mon, 17 Jul 2023 16:11:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689610268
