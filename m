Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 983D41FA9
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 05:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC13DC433C8
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 05:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687324388;
	bh=WuBgtv5nwsHCmgZS/2AUb1gOcRrAyhj4OIka9FQiuNA=;
	h=To:Subject:From:Date:From;
	b=saFzonDS4AiA/R3hkL+hAz9VEjSdblAKJ9RPr23GYF7kiZr5q088zWKDgZD6/GYIx
	 BkGs9WJtd48ZGDURyuFII9SWrCLIAES8oSToVgL5t2/qCeSy2g8dNcQ9/nzxEhssye
	 eA8ISJD4uOYIasyPyTfcMDu3VoNbXorRgSzrbgIfI7zB4B1b3R14ZSU5PQa0rkoadz
	 DxwYGF619vzAO/im8GMevC9BTnIX5BQT2MBml8XDywRNhrtxjBurC0yTGjrcHkSB5p
	 KnWVO1MrhvPxNqwQxpc1OgMPNo1i1ZvJ05Iw3eSKfY1JGaUktgBNhPjwX9GspS5WqL
	 ewpXHU8yHww8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC77EB64D8
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 05:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168732438869.26216.2904066547993883018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68db9a100cf78ce2c40a07975501db0998134f428df46008dc040d47fed93a78
Date: Wed, 21 Jun 2023 05:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687324388
