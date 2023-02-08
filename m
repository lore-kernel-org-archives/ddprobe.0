Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31330643
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 07:00:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E26D0C433D2
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 07:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675839605;
	bh=T0Mjo5XIjVvC7X3Y0c02O8V8C94thOyRORVGbZznjwY=;
	h=To:Subject:From:Date:From;
	b=JqQmyA9hfsI/TLpaSQE8eeYRrfEm9XDkVuF59NQbOZH4UXYBlymAQq8bj60WvDEhd
	 iDBCDCwryW8E+Hj9tq923QLXtDeDMiWifTzKvH5RBwIHfv6Q9YnyAX+I9iTFAhIVIC
	 QxNLi6jM+oaVA6gj4zXlVWkn77ZreEsbYyPW2tSTVATarPz1eZg3vjL2hrOFMX4TN/
	 YCmEisL1EzJya1oIgrxVtTxC+GTbzjIi47fdxH0MMPHxS44fefjj6WsB+4gq80qf49
	 IvnnJDJPEq8D/m3vNRlYaOiE3jHKK+pWlYTQGT2ChCuts7aL3L3WfBARDZJw3FE9tV
	 0GD8kKteKfPtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8552C636CC
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 07:00:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167583960580.8058.5038950686413564718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e00bae84155f712f3b10360f9c02eae90235d6c1067f8950351e3890770ae92d
Date: Wed, 08 Feb 2023 07:00:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675839605
