Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0B6F634
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 07:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86C89C433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 07:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671175287;
	bh=dYygV9zowpssaU5qmBK+GpeJjOvhksgiBsQqwYvpGdw=;
	h=To:Subject:From:Date:From;
	b=pZP8fmZLO1jeCxp9m3f6QcIcXtqzAUmCqkF9g2ebHQAyLu/CdnUbUqRQ1m7dNXztD
	 +4mUf9H5esvbpneqn52WmrKkKHxkhHmiZ/z2LKVlmMqtBdDWDZIA2spWL89X+rqyY4
	 /UHp9gF2jgJlN+0BaX029VIqr6CCJT2JeZh7uJd6tWP/Pb5B9jmy0lem5BEEZo2XHi
	 oUQqvyI5YE038/ScPxdCwfWLgMRZnUjiQqO1bFAxXY0v34229jIP029p/R7OxdXdU2
	 663Rq94BOXFWCE+RSYJxRgj8MfFoUQEJ93MWQEhBI5q6SRYmSmVn0sGieOMHJQ+1Mo
	 8y1V2dmxcNI4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68657C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 07:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167117528740.5026.17732614631113299907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa8098165c7f906e5a5b01e653798e02a4a4cd94b8736dc34b986ffee759ec38
Date: Fri, 16 Dec 2022 07:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671175287
