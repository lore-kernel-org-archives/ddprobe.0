Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8222596
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 22:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1832C433EF
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 22:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679957585;
	bh=VXODQyUPzJFdPDhZF7rhE2pB8xKwmUHAhBv8xcwswIA=;
	h=To:Subject:From:Date:From;
	b=JKbRAp/6o2aemMYS0yaZHw5NQ8lQ/RMpaH0nvzqXnVxFHV5ExFitgoEiZY6rRqs5p
	 13FNlcNcLNnDUzNnzZzyfBURjEG4xy4c7Xv0WNbqpEduSwDceWaRzsdh0pmEvnUoVH
	 lJ2TztongZA1LtE8NmYu7oWbqVJsNq4qYbTP8UzjX+6j+NBcJUiql5dAIu7SQqronh
	 uK3uaEndbtPHKkfffHTjNjYvCJh7auXesMoAgrOTo8UMk05BTowH42N+fVDLeOb+ZG
	 aP7k9BWAg7ouLi8SqB+VMErAZHp00BcilcC32wBZztwha3QJh+vT4R/z9YmVihf5fF
	 xYyOo5lRRif/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBCCDC76195
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 22:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167995758576.4103.16112119825932914715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c5f0455f9497a29ae68de327a21fbfc0ef4a4427a417064531a5113b495e71f
Date: Mon, 27 Mar 2023 22:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679957585
