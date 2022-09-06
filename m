Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBC847E
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 17:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75959C433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662484853;
	bh=wcSXjhTXqzvwNnjIhLiOql/rzB3S9eF5c/tbFWSaBWQ=;
	h=To:Subject:From:Date:From;
	b=rIHJm+WWvrjBEMMY0T7o79McBSnU15peUvaeR7XEqLy+dtIfqK//E9o8OaLGKd5Pc
	 EMfj/eVv+R4cM0788iLGp9jp/BGZSJEP7bMpbWlhn2rwPHNEzXnvoTw6yGIHKVHd68
	 c6SdXwH69k+2VHqeLVCFHUJBsSzDaKcTruAAYqsBnRfZ807TXjNtg7uO5tLeOd9WkZ
	 NbmmZb2yVJq8ka7AKX7O0B1JofhLga0EBNvfq7yNuON6uMy7IYyqjd+5Yer7rNGubY
	 io6xtvixhinYL0OaXNw2f/qeE/KwiZrvR7FnVwpwjXIjrBCkhzhz9wCWy8CqpIqO3f
	 LKhYGq0Ia5xEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D01FECAAD5
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 17:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166248485336.8299.3875931944808419685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d622d638d584c004d718f3e29360c1a6085540634f3cd29133d8e10bec49a3a
Date: Tue, 06 Sep 2022 17:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662484853
