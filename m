Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 564A931A83
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 09:36:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D21D8C433C7
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 09:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695893768;
	bh=9ux7e9i9Zrd+pwGsKOhrqn+GVGXLtjTOXQ/Opith9Rg=;
	h=To:Subject:From:Date:From;
	b=Keg7zsCAkjUZ6dDssIp5jyDKpTI3byy8tGQIrvoUwj8GwkNWwhI6Y8bvJBR7PkXa7
	 DEJ5wCOccu9Wa61RIqr3h1cxGQsPYQnxhfv33BYnAZ4Ndtr5AJ0F1/z1j/u0HMfLOH
	 py6quIvFl3LuFS5paYW4YhPyAjE3TPJbOGkUn5piQAHFgYb0yPevPvu/ImyrPlXKC0
	 Rf26I1z6XLQgMSb4f+jh2xbE31UfehZtduWIAXPTs4qoIuXhiuw1lhGkr0JHQAyaTi
	 ry0Or0CuMZ+6Q9jCtB7HTd2oWY9Qd0AGnHF4z8tVIB9Y9xSi6mj2mqNySg02Ds8oDG
	 3dlBdV5oc+9pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE92CE7B11
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 09:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169589376870.20700.5042668024567761496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3e9f02e4498d8da48495fcac80ac09d7ed563f7abf9fb59b8666d7f2f1bd9da
Date: Thu, 28 Sep 2023 09:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695893768
