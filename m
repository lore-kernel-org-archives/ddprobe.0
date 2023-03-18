Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47AED7F8
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 07:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02D87C433EF
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 07:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679125926;
	bh=7QPfsVjPdYd1fuxCuH+9bUOVx3u4Eg2doNfDaMa0o3k=;
	h=To:Subject:From:Date:From;
	b=IbCaW+Eaq2sFWB5nu1yQeqn9vXGU5FxF2HJcnVPP+LgmHPuMMag0uzagEp7K5qgG/
	 7roHd0KnOAgOAg+RTxkfCXEsH33YD0mzeXuaW9BmO8mZ0Tzum8qQHg6od8EIwMjIdS
	 lf9m687lN6/pcjD+lu4B8T4h+WYkG4TN7CfNh/CDG6Sg8w8IVhXyf/okQXcXRXWyeH
	 9UBmYO9XBgtxrjxsuhzkoWzAKgoPZ5VJamHkkjq0rpr3WakZ86DtA0Se/bX37P8hx4
	 035XlpGP950t0N9IQPZ+trLHT2diLV7ZdXiFrFtHkM6YEqk6/9Ng19ezWwjD7xCrVh
	 aHeWbkX28awjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D85C1C74A5B
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 07:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167912592587.20667.14819717161112120954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1e011414f183b7230322ed2f37a3d3e32e64523ca052a1d7078071eab646282
Date: Sat, 18 Mar 2023 07:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679125925
