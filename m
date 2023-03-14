Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49623A939
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 19:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F08FBC433EF
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 19:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678822686;
	bh=AR+1UcFcoDwuoZwKM8xlWJCNo5yBUTzNE7SpQ58XLUw=;
	h=To:Subject:From:Date:From;
	b=tYzIe5KzpvKqGOLhUQ0FK36Q4vVISorzcdxfsmsDRqjXf934U1d7NBi/bEumVfg8G
	 bvaIMOwl8kEkAQ1es/t4APhL6W1bF8PNYF/5uNsNVZoIOI6KUsj1kRPmL7H/zThMU3
	 F0Yg6cTgwJLdAjP24cJGHsh3iSkaEF8LqZB9RGIp/dji8a0WTjzG8t7aGwJZJ5Wmjv
	 w49o+rIgdzK6gnObiHIJ9v/xAOOC8rKAFu8BHCfOXUCil1kMz1QpVtyfKIcXRmyftn
	 9g1yQ8t2ljBOmsDYLW5esZVytDT5JCL5Eplgx9jT8MQVZehToJ8NnUrJTY3Dxkd0iq
	 vpiqeABz6XspA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D03C9C6FD1F
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 19:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167882268583.5583.6054038872269564437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8d74877ef7be4c70149fc5001e969a14cdc7c1bba2c2e79f8c9e505bf0512dc
Date: Tue, 14 Mar 2023 19:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678822685
