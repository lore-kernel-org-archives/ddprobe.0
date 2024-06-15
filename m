Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 756BDD26D
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 16:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718468303; cv=none; b=cgIq7JSU7LfzFE+j4/5zm5wfKv1M+S4Vq2DaVwJ3kdW6yWczi4sujBWmw6jAggViO/8gB8L2sDbP2Fv669AfZtSjn00lrz90OkeFu3NiQNWE9dQzPgqfMS9IqLkaaRzcj+mOWQToJRVHZqj8cM2cQktMBI3t0nrUJKurT5K9XCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718468303; c=relaxed/simple;
	bh=ueLzZD7phSfdDVXdcJlrbXR1IUiRiip2KPwpPPpRJpA=;
	h=To:Subject:From:Message-Id:Date; b=pRjheG1yzDWvKufDOcJKHrNA6/aEoH9PAJoKLhfsQZi8j+eHIbOUW45uNar7j1CwuJ1hWuBnAY6s7l6xT1SR8rBKxipx7O4oqebcdQaBx/P3KWT2qAKSl2+/n0vw3iqkrEF7NLih0ctzAmEodM7pQ5S3vchHdsC5cbVqZoOKi90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OLjfypXq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OLjfypXq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9628C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 16:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718468302;
	bh=ueLzZD7phSfdDVXdcJlrbXR1IUiRiip2KPwpPPpRJpA=;
	h=To:Subject:From:Date:From;
	b=OLjfypXqTfMSRPu+7L7h73mHffeaKM4omqu22mXgjZ5Jle3Dy1KnV7L+xFFLTZcJq
	 RRJ6FW9umSgxgV0aN3MwarWqkxfFF7/9DU0KeTGtTW7ck/Ch3CN3ZrsmH8tCx/sX6/
	 I/8bKE7Ib8PvamF7O2OdYwpKrj3pT4GdQQfmla7yr7DzB3k55Vt8u+KC3/y0kUri5U
	 3IhdjUL/eaxrFhwCqDsKF0QRDLkcwAF5h7zAbqaAoJV4rfjpahNK9+L2wMeYr2jF8Y
	 Qq+W4D28CKfhBY4vb4I9GAedErvmrbSq1cp/1Rt8bMOe2Pb8W/aAfRGaQoeNWPL6Nc
	 iXVmXJEmvBm3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0A21C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 16:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171846830281.12164.12405580207103542204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0112fa959eb06faca266ba531b51b8bf15e830f708c9094b8207b394b390e471
Date: Sat, 15 Jun 2024 16:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718468302
