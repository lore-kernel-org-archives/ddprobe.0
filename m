Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA97F2F5A
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 21:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A20FC433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 21:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662241253;
	bh=h70gWEAgqKJYynz+G6DbDxZf8VND8fifkjyjYi0OrCo=;
	h=To:Subject:From:Date:From;
	b=TIjA4QfzL9dghCKp3J1Hjad9+JhMwGa3+XTU2Zme+3Q5jnp72UnUSDfasv8uJbL+L
	 WVxuLiRvK01PTCk0iEx6Gtegz3bIDfd0G5pL1x+gNa4cGWhqwBqA+aCmEaFgAwQJnk
	 TWTlTsKMdGkwjhTQcWQ4LU8kUhJejcR8eoB3CoED1IhoR3KN9OcFvwYrRP9UDOeOOh
	 czDclB3V+yWvtnUwfa5eh7PLbdVb4aLsWKZaHb2nbdWcCHfx92DUNlZdFEGN1uJi+n
	 GIOsSkHL3obxvKBuojpAaNSsLQqjeidwG1hDeph8uSaIf0KrPHRQDcyZfjV47JeIa+
	 N9FDIFre+6FXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D685ECAAD5
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 21:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166224125334.26676.12470611886680065766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcc6d2c58c909fcbc8a13f8ed1eb485a57b8400f76236800f750396f8824c9ef
Date: Sat, 03 Sep 2022 21:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662241253
