Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5966D1B282
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 20:55:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D12CBC433C7
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 20:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694897708;
	bh=beDdLEqxai/E7HXULiK/X8YYB/14Bib4UyYpZYfgeTA=;
	h=To:Subject:From:Date:From;
	b=MVEDF0fEv3mshNC3gK6QfC01xfRqOvpHBBToXtyVUhusoaLzIvq96GeEoY+5E4IYs
	 ILOjuCt+GR7qwgPLbhjr6dy5IjGsPGCFMaQXIxEHSOR9nS0g3hGs9bmQSa9o+acjGQ
	 RPJk6WQWi9qq0flYFry9FyvsJz26/o8jGord7OEb8v8En3k9lXjJzwfsNYh0LZRVZ6
	 okDnHSbMS52lG5Gr9UXfrwnQ7TG68s8jim1YeWtJtq6lFIr8WT03xb25cZ/W+YVVB0
	 FQIfWMlUGZXbOvPIHYTs+FdRAbQLEvbE5GKt6UpkU6ZPHj1aephv33qA8Axs9Wtzc6
	 cHSdUvItUxkHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4B8CC2BA12
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 20:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169489770870.12809.5026066197772803434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3be98f479e39598f4f22e75160f8851968d475f1c407c0bfec62b80fb22a6b7
Date: Sat, 16 Sep 2023 20:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694897708
