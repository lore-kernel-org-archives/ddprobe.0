Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5328F3AA98
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 16:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE8DBC433C0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 16:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687449788;
	bh=85OH2iYEkEDTLjYMpLzO3gUwzRwocHHNcmd3sPrPjao=;
	h=To:Subject:From:Date:From;
	b=iKea7AIeSPnKJ2tW6SUpYlMeXd8lxv7OcU/RUUGOZ5koq5LIuQ2xE4YlazYHLUA/N
	 ciy+xWX4F9p7HB89p980Jb/J75QuA+lHMlnTlG/6sxfMMIPOgzj2lvS1a0C3njqRan
	 huDX5pA2RLxbQkCflfzQQfym/6XVqexGzF9CkPUkzxYQ0uBjJwmvXiiL1oTX7lhDnE
	 9X4m5fME1aM05TW75GV6yJUL4pT+fO5Wuwy1g1XyXMRVdKNr2ln7UGq9kNsSnfJbZ5
	 p9nkk9UB42WlNBJDg2q82vlMhYXL7A86hJhJqtflYf2FTj9j7bqy4TueiNlHnW/wmi
	 Pg4ipf/xWRyEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A700FEB64D8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 16:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168744978867.9489.14568270848426554741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bac41fd2838a73a5ae5f188280c7faa610eb0aa2a1bf1aaa9ac8cafb395559e7
Date: Thu, 22 Jun 2023 16:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687449788
