Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C72DA623
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 01:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C415C433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 01:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668908454;
	bh=up0TiXBmQ3PHNUvVlkEElIKRmuHiPVd9oBcvbdpCNHQ=;
	h=To:Subject:From:Date:From;
	b=uGBNXBWn1WlvAcDreFkElwtBxavTNn+17nHJiimi4Cg7PD4dKpDbxgtkQTzKrlZ3X
	 svN0X0se+qXa3JQceCTkQUYFMNc5NBdZUcceD5VihVdKWk4mgud2KcVtV4CZqueRce
	 1au86vVIsxZcs3U2SRZo9d1YZuP6uRfbQ8OjtHjz3kAHkM5hI0k/mlkr1QaF0hvo33
	 R+DNyyB1OF4YsWmgFuHc+l7GxBTOJlVw75/p5Zr7NE0LgOa29+3tRrBko1yuUYR3d0
	 e1T8rjPwVVcb/I+lbBD9qquRqjmXu73bF3dF3c9zYzY2UKI07CZi2jaiPoolP8n+QY
	 ohMQ2lFAKm0yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5404BC433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 01:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166890845433.10285.951993291808066144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a2a7322f2444c22292564feda17d3b4b064c35076c7d88148ff5b01ac82fe74
Date: Sun, 20 Nov 2022 01:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668908454
