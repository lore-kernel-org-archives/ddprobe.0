Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AAAA23816B
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752496794; cv=none; b=iGylRaGDsCdcSByo5vxqX6ohdWgpKpvWZLMUor1GyI7LuiEusRcq9+MWJ1oAYGIxRG0JxE4ogTYobtj7uL+49r+T2zdPU/Eu/v4bivuJIvKe3o1i0EV+IEbbTbnz+lW3HkwbLrGX24wh9cVGfalwFycVTG9drtO6l/hwNIyUNOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752496794; c=relaxed/simple;
	bh=ZRpYJL1BW8t81KbJOj0AR24r/eekiyqtUzIx/z45ops=;
	h=To:Subject:From:Message-Id:Date; b=ACI3JtmqYeHnOdxHt3FrPU255tkM9ml1WfwCzGgE4VElAa/adPAJMtKjW1xqXwuA4C32TgDUtBnBptIEEYiBLO9m4WJKd4FcnXupNFFHxZBeGlQtDPkHKnjnHKhVIWc5rS5DQ5sTjTB6ZPp2pcThadMHgDpcjMUriTTNTPPI4Xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IFGF1qi1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IFGF1qi1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC49C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752496793;
	bh=ZRpYJL1BW8t81KbJOj0AR24r/eekiyqtUzIx/z45ops=;
	h=To:Subject:From:Date:From;
	b=IFGF1qi1KXWmN3f3YwtsBvp/znztOcEhXr5wTfyvie7LV07ggipI2+3jDM4RwSe7Z
	 r9TqAiS+2K2sqCccDkf5UzGU2aLQ1jqT7CR8fQbO1zvnKHCBvz6KoDOLfZC4s9gQtK
	 NNHN+awB4afq6XLPzDvt1s7Mh9qpVzW7mZ8Vw2P0Zm1hfW/TNhm4R/RICAH0xGoRgP
	 MU5Ni2IH48PaYABKWNx4dZQPKzLjaVaGvmXdDfLqNZx8tBMGmZt7KJNbhueo0SaChY
	 1nzKhaKlWmSJ25mCq4AbsnPFe9WK5tDd2B5r+TT1yIotqORYpKAJLc0Ucxa5T5NUbj
	 rCp1FBcN7FAaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91723C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175249679358.21333.5351108005373317134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be0cdf0f78401e7a669efe2703f824383be3479fe785e40f3ecc679f9c184feb
Date: Mon, 14 Jul 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752496793
