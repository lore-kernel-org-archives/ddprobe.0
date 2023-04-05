Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E957F5
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 08:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06396C433EF
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 08:57:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680685026;
	bh=zCX6CGk7qcyibQwKxU7x6c4HKafKy8n1XoqdsMkG6JQ=;
	h=To:Subject:From:Date:From;
	b=s5Z7l1sK1Jgd4oPALQHs6z5YMx/ZXVP++gdZ3s31BwDioIYrxDaDTitfMokJW/Ftz
	 rnKwhvrI9tU3lzscHHo+tTEIq0iuj6PwaSIyGGEm9w+fEVsPZH8ZQrvd2jX8NLOWfx
	 fzUOcpn9qwv0E8jZeptOD9SnyMSZGSgm/9EWdTr5wOBUpCYqjjaE9IVL5xCe6vuLnS
	 tMud13PuP+bmkiJ7EXZ0DV+Vy0DkxmY7YtmW7jQwpHProoYQqiuO1FNHfdNyK/P/qe
	 2nyngw/Se8ctrRexmBOUrh7Ay6yiwvLN5VlEE6m+pL0pXO4bJ6Fyw2J1vmKPOsacMA
	 Wv6kWCAPIjAaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF2EDC7619A
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 08:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168068502589.7734.14418463892580963564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80eac352a70b7496c403c45f66da61cae2dc45e7ba0b19a4471127f9402e3bac
Date: Wed, 05 Apr 2023 08:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680685025
