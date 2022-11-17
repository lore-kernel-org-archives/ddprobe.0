Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7F72192
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 01:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 695BBC433C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 01:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668646854;
	bh=771VAY73v9IyOzm4NRW2oMvdZnVtgrD+TQCSrDHizv4=;
	h=To:Subject:From:Date:From;
	b=Ke8rGCHQz8TEQAD1KlwRNlCjCwIwp0xdFdF9cGGs/6F49kdlZeluKlHkFmiQFeTUR
	 BuP/HN3lD40uTqangDd21zeMvusQePqVSz0AhMvpW+yUb7sO0eZByThD5yahOiNbZn
	 IdjBy8QGQWj7bkdBOLxIkBSBx0YS9tLS8JtalXmOddbxqDrejkj8EjjA+CHQtQrN1e
	 5JBaYVykKb0rXlk3Efen9OoHXY0EOG7yiB5WyKpvvT6Q1DKCHQbj+ubyYSAndoyI8Q
	 lXTa1K7PcyjTTd530husJm/b9o1BjfuI9IinqDgFiTije2CuYnWTkOL8fT/xO3MAFW
	 xNSaWRVTW61gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FA80C4332F
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 01:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166864685431.8176.4048358529019027221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30380c8d1c7d92d36d1eb3473bd463dba9a1e31757ad6798e1ef5247417d6c40
Date: Thu, 17 Nov 2022 01:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668646854
