Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0C2610EB
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 05:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73168C433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 05:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663650653;
	bh=x0Y+XNeAdRrYGQT72ybCnoYdxKBXDQtJSCKkXhnwv4E=;
	h=To:Subject:From:Date:From;
	b=jtspSjRaAGX5359loD+Ktji0qTY4w8iogwXmn/s+fJALo1KG7cGBqjzzCVnhwjq5Z
	 fEtbWY2FzM6s218Ut6E1dE+qx53hkVDa6EVdJwY/vMtLl0BsMLKcC5lFRu2WOuzKyl
	 tnNm6p4IOXH6yyaSoj9HQZJD1tT3iFX5QBAlJQYoLEgZr21Fco7GbXNU6e0I2lLv0f
	 uF76uhE8g56yo6whZvO1agmxSzTzYJuDZV5TYnyYKJ72tNiInvin7QCY94gd0kR2AL
	 o/Kll4CK6qQgmIXHNub4d0HqfFtwrh+ARBSihZkq7CJfbAHDb1f6gAjh0FM/gcy+Nm
	 qLgI63NPaeBog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54FC9ECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 05:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166365065333.19971.9950568700481641609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0d37bf9c99ad8346ac5523669727f51e03f4e3032be44c24e8845d4f3e0603e
Date: Tue, 20 Sep 2022 05:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663650653
