Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3FA7366
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 04:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E74BC433D6
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 04:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667275854;
	bh=U3yh3uHAHxpUa4UDWzBh21X5xiHPWSect+8AOfIFmb0=;
	h=To:Subject:From:Date:From;
	b=l/w9fo90ZBKJtHWlA+byJgAu8rzOjvO0v5D8Y75dw+YIjNlI6emD48Ck1DYjKEkXt
	 ySI0R95/jKt42UWf1B1FYk63592KIv7adiiK4AdfjONqPhd3Qu0HzGvo7tneOTd6v7
	 P2Wt8UEMoDYD2+18ptn5RTONZqU8r5bgVJRpmPjuyPZE9kScc5rRVIb4xuOs8kRqvR
	 JmF7QvxdMIQTqQrPnmrbejeP+AQE05QktbUHJeQZVZwesMU5O6nrD9XC28B3sTzrt/
	 BLK/a8hA84nGW48q9Y0QxI9NkSSkkhiaWKIKvZ8+1xEMiXqF/MvWHAfC+q+TA1qsuI
	 gho+DtNRGkr9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CCFDFA373D
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 04:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166727585437.346.9266945620237863226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 149c347fa6ab9824eb900386be04693646a963f96123c12f701fb82a1c67cea3
Date: Tue, 01 Nov 2022 04:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667275854
