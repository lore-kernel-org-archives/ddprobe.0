Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6776A111E
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 13:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD5D6C433C7
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 13:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690894928;
	bh=JdybyskqiKOS8RfdxZQYxXYObtGrfxE7qYKVLGEsu5o=;
	h=To:Subject:From:Date:From;
	b=OzOk+kw8t3f3VtP4uWD3GtA1A3LFxU1LWHUTqTjsUhAj4OpLAOo4PkakeM7gw9Py+
	 t7sY1VFRlhuwSnpUUfHRNW6ZAbNSS6xIPTYAa+69eLSpNDhGIxIVF63tq/I4Wma3Iv
	 REF7cvvukxcJbc4I1+EjU+L6uo1ExzCs3Ny+hu+D2uzqn1xRNL7pM3fk9lPwSpCxZN
	 5SYwS0XP8DtJH8Dst2QY7VOsCOm4sXDoTXKZ53TWB/HSeKZ+4xD5YBxKfedJZeHYe/
	 +GBtkAWCH5zdK00SPIUi54zpxy5XwoLk0EASk9EoiGluszhrPu0K6ERsK02Shr8p7N
	 kadM0dLARy+3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B979CC0015E
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 13:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169089492874.10940.17571304407365416511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb343f100641ddeb18fa732a6db6d4b40a1029bbf0f9e44dec4798ac89b31f7f
Date: Tue, 01 Aug 2023 13:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690894928
