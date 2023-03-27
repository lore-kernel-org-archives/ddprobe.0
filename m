Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5847681E
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 09:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1229EC433D2
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 09:13:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679908386;
	bh=TFZMsXMtJOzQ0GzdYb6slq3BhnwztzI/hd0dr523I/A=;
	h=To:Subject:From:Date:From;
	b=c+68aMOyhWuD1IIUx9fI1rFsrW0rWZ5yb/eWBZC2UaHL0yqRyKdFosw4qGY1B3F4m
	 O81xJ4ppqa3W6VlNZdMpyiSDtkqjoLTEIprBn3yIl72EQKSE1ehahErprX7xzG6Ao/
	 6Ddvyp55JppNC1yiGs49ou3GIhFRSsUK43XVkynx4P9lXvcqFUkWPiakqr25BwyY4T
	 gGQHKpHI5tLKb3H1+qcccqpWh89tutal+L17jghx6yXgxTU9qUqzimMRKgBhpOsmWt
	 Rn36EkJAmp3T8VYINAmm3Cd2UxcGW3DAM3Xod5xlZ+kK3CZx65JgoZN3JrdDq0hq2J
	 6EH9qozYDVezg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D39C9C7619A
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 09:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167990838585.16390.15533319568898130676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c1cca94917a1d7d7edfe7099ca3462f9624914b93035496b55b86f0675d990f
Date: Mon, 27 Mar 2023 09:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679908385
