Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3932D372
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 09:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCD09C433EF
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 09:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684576745;
	bh=bfiY0ftkG8F3gNlqEUioK3zAwn84aRvmvBOe9Q+G3BE=;
	h=To:Subject:From:Date:From;
	b=nU2W/FAp1G0FvO2pAucAogNZrvtqyXy4ZD4/mCP90spSAHAks2egzlTXKTObSh8jv
	 t7CZ/isNpTF43EbaE1tLcprUm3hD5BgRuFHFtjbf2PDAR5S9v1dvSoVNjqtdXhmAmA
	 70y4JU/gWl12DupFTvpAmE9YkX9s0e0mdLRSFo7tAK/9vYJ69txkcXxkfT7NaP9Rkd
	 idhk0/HaP3WQJZuLIOnqYoQvT3gxSi/fs5iwE5kVbZuVYYE6R7pKjaHnrs8tCZJnU9
	 3qMoZvBrmO8GZKdgDERn95Geu7dNZtMgswg4eCkfetn0Wbrl9UIhdc1RdZjY/JbY0Y
	 0LNEZYtKyewLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEDAEC77B7A
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 09:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168457674577.7558.6944710867052873295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 048eb4e90d2f79e5aa7343a90999249f5d8c1cbe4ab614a6e49fbf9fe8a00bbf
Date: Sat, 20 May 2023 09:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684576745
