Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33AE11DFF5
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727502954; cv=none; b=P0+xIWRiPmqyd0MJpwXxPe2AndlK4pBxNnQmP/7M6V/ZVKmpJoYrCOoWgxuxkr9H+6sbtnpUGFyFVPDsxeUchs+78fGggiMGLQgQpYwjksFdSL6njJhXrG53tjhjS3UsHn9sA+lF9KGIHUm3nn3U6kP/n/kzNIMp9yEns60kuRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727502954; c=relaxed/simple;
	bh=+SewvTjS74OPP9MqJ5K1BfhOg8ZTZ/a9mAurSH5WHbk=;
	h=To:Subject:From:Message-Id:Date; b=kGC9oEPFKSDqv1YAGz1m0gG/ofIFTXImcs9roDYgtBe3eLi7eEX3RNsOEIHxUKCLQVQo+E0W1O9zCmp+SVKOXbcBBJQn+T1ptnyjxt0sEbsRDXo6hz+1YRjcXiSYsPFeLmSlv7BdX5Mnv6qRW4p5UM8wCvBGH5r2DPttJ1v9QCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OB8EulEu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OB8EulEu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6504C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727502953;
	bh=+SewvTjS74OPP9MqJ5K1BfhOg8ZTZ/a9mAurSH5WHbk=;
	h=To:Subject:From:Date:From;
	b=OB8EulEunMlSGz0LeMpHHTlFbqQcDK7ONMXAXiD4TwY4QOfIwlj8dBzDXAZ49Oje+
	 tGZ6n0S7+g7eekcqdijc2qrZHf6KDfZMqaptN0TVO4trAswuwcgoCkBXeoXr0wlRv+
	 9SCBkA7OPZnfrOQdzlbr3kou4Ql3Oa26z5REyY0RxyGvETUj5Tcy5kC6OHq2cpW+v7
	 H3U9PB93UxaGCsyWOka4CukbfPkbQ6IqrnlhqavqX24Q7q3xxYVFVBn1We6brN2nO5
	 BSW+KWbUhSsj+Q3liU5Z5AtHsA9Xu6wyPIz0dHi0nx1C1+9ZKzpLplak79Ud0J3gtk
	 qAS+DlX5K4ZDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9864CCF6493
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172750295359.31603.9052539100351258826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 351b17514951233dc26589358ca173b4a7f7601549a239a11400c0c44ce46090
Date: Sat, 28 Sep 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727502953
