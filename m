Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC59FBA55
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 14:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BEADC433C1
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 14:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667829654;
	bh=ZeydktRf7zKKdqFdaU/oBhcHXw9OsnEfFiem0GS9yXY=;
	h=To:Subject:From:Date:From;
	b=emtdO3KBwzGhbTWNHNRcJybYCq/efRnapBC7GGRWvtb8znZSpx8wTP5D9zknz0HXz
	 LDyA49h7C0lNTqr4SZlraZaDvPJ1wlFpIN62QzSYUVjyL2JhGMgN38l+esNMt7DGfu
	 Z2werJGC6nNC3yBFUEbHqYrEeoLGisbTjkYXEVFi7u/cHphD3Wu/ABO56sVIC6TX8u
	 /EdnMeezpY3qLNrHIF+sA5iHt13OBrTcO0SChiJYWCI57CGkdlIBhYCHwnmzf6E7A1
	 FVwradg5l/Z2op59QVsaWF/9cd3oFy7PeXdSGLf6bY+AUHHws6J7WUcUhpsgJbRmAv
	 fwkaezg8ILw3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 533A8C43217
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 14:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166782965433.6718.328719013043816401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c75473c1196ea15f2e60c2b02b4fd8c3666d951cba75a96cee945cb046e42b59
Date: Mon, 07 Nov 2022 14:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667829654
