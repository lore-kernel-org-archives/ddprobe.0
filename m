Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6A375CBE
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 18:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6647AC433C1
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 18:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669399854;
	bh=VwKe7mZdUuxvLjPyojE0kwXOC5hPk0cJC8KC1ma9s/0=;
	h=To:Subject:From:Date:From;
	b=aqWG/XwQ7zDgJNW7lm5GrFncHnIip9Tgsvuwu65/vShkhN9hUfY2JfefW4zVshbAU
	 6BQeNMHdw5D/AaqovW4dVmR86aVPx2GxpWjUDZfSRme+2XgeNxCpANG79aIeVF+AyU
	 gkJEGrpy+d6QIgRB6VFTXIQcMSanwdbw2oq0NU/CzqwuShNEizYXvAwLxx9uRGvyTB
	 ohmhajhdCnQOPsPVLnqJ7bQz1y0Zy/meyjqmzz5vTE38pffe/s54bq+PHtiIorDYGn
	 7O91moJkXuSjVBvUVXbXxR4bKqM9jV6u3zbj5lVnC8clIeKGN+tWO8n+fk3HUEfA9V
	 kfM7PjBE58L7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50FB1C4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 18:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166939985432.15997.17398862872491426878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b22cb2cf822873307d2c9e36809d7cef4ec610b806656515e698717dc76a2e51
Date: Fri, 25 Nov 2022 18:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669399854
