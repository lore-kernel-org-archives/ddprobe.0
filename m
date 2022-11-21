Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFD5910786
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 22:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67EC6C433D7
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 22:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669068654;
	bh=ZhjGMerR77xC+SapuO2T+gwBdX9geJXDXzYMekM7CDM=;
	h=To:Subject:From:Date:From;
	b=oSt1IWo9vb4Mp32EvaFs5zv7aOyIUGEW9vi1PDkRpeu0o59VSD480J3JAn+o6k4m2
	 1JrRFUiUvM+CfgAqaasTohNCAoVzIRuauIAZpqhvWqgHPjI4IhUWF5iG3/JjJQ+Ad9
	 UOwuXZrW347Io3ffcGq/N5k4iunZTYtqCx6iqQP4PSQjs/QPyQh5xgJz6unYu4zWVq
	 HAsrn9JI2+JQhIkw4G0ybZC7NpMi9zfVuDkvyjY9xRwMfUlJD3lRRoT0Y6izvMQCJ2
	 Y3lzJwT4wiHjh3zPDTAyGCzdFrt5HkFlikH06ArSuV4xuw5ESRoH87NumyLUSDJOEw
	 6bBco4FljLNMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50D21C4332F
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 22:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166906865432.9246.14543864708830954390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b15ef81e0c08359a404114da664446a67a18a4da637f49c85eaf3ace75026f1
Date: Mon, 21 Nov 2022 22:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669068654
