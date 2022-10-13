Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAF9D6AA0
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 23:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D0D8C433C1
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665704453;
	bh=PjfZ7OYKp8UZl6RYN9ltmRoM+oFOFrVsSzY9v5on828=;
	h=To:Subject:From:Date:From;
	b=LuEuVDK4PCMbJ8sdFjZuFli/QY7xkwngdMCZxuHImQNyY8UJOxSjJLtr6/kzRYZVL
	 Osji0/GckTOJmcoJ3JNMmmMbC7ENM3/T3z8E8gxGKg6jusuR8Y+JusLZFbQlybPenk
	 h7rZgOXnm0siZTixz/iK6an1IJ9g4uAu3jdgNcDqjeIcmCZCMg+1hik5IsUa35bPyJ
	 T1vErVvJWmRRQkF39nMfG7H+WI3Vjanivh6ZGw0553gPMN8ajOlRipgwIQG4c7hT1X
	 iGzdH8Em1qTA6e3yq3R2MrmOE3NkP6JWdJbXWBuJlwFxpa8SEhH3qBtzYUCu++4dmm
	 d+h3+NBqFG+eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53C6FC433FE
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 23:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166570445333.4623.5605354325680179245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ff4570599bbae0b9b32b4469079c753e956ba62170ee003f9e7f05b03c5b8aa
Date: Thu, 13 Oct 2022 23:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665704453
