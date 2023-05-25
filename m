Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 770C98828
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 06:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1CDF7C433EF
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 06:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684995306;
	bh=T+eo3q1qz8AVRDBWbYTrO5LG1AYeT5SUVSTjJdn0WYY=;
	h=To:Subject:From:Date:From;
	b=sqiVLt63rMgkiG9u5mpKGpvdLBTjuC4G7xEWpKVehNM7Q3CokZp467jP99syxsl0i
	 3XKak4rlyedraBqU/2JbrlpVsmLIPwMEXnsi/DnzocIkWxw3b163Lkk7jgE4lfMkmW
	 WtNp+qhALXarYZccQuIZ5dv079aOybQa9g8NiAf+yoIvM1gx6kGxhj/9+ZMTpeE5MX
	 9DWv8P+3ITX/hqVOac9BgtA2FyrPRSNKnyPfberNJJ9VwnUTVXd3X8Y4wu0SjzxiWW
	 JjAplp5GamLZqmFYhV3U517AtLRMj7Y+HkCjZuRsRYTs/N2Dx05QOmAcbHeChAmO9e
	 TRW8taG+QxmJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D05FBC7EE2C
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 06:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168499530584.9640.9912711760744752319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 581b7c137ce9d38f8dcb4680f046ad406b7930ebc1e59a8fbe054213c27241f0
Date: Thu, 25 May 2023 06:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684995305
