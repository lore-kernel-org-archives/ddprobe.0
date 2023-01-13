Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E33CBBA41
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 21:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80E38C433EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 21:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673645487;
	bh=u5YN7ILAbAJDCEuieMW8Jf8763IwtmQBWm2PsTQ9WB0=;
	h=To:Subject:From:Date:From;
	b=PR7Fo46eBRIHigxXitRqutixFIheZvhL8qYURvxykxzKOVEsxZElCeC2gbIlzrR0H
	 nvwHhssdTpy0+8GQDaJ70XYQauVWOMDV66+GJ2lLyrCJYCKV5OewNoWMcfN0zLJK+C
	 iJJBqa+Kh7IU0BmxHEgWLpyY61ohgL0JN7KI/VWFuAkqpU1TWBLiuS1bf77Okn/1/q
	 6grmYiCgtQUxOzNb/A+lPCuxBFVPIhUo5DOb0XxOV5FGi5hTvTt57wjtsciluRD+Se
	 yonmWrKwu3CW/NC70NIBWmPCY4SDbrjkyQI6bOmxmHn516ryzXl1Vvyd30LX+BZUzw
	 GiKVkD8sMgkUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 649ACC3DA78
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 21:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167364548740.14889.9688667345492456369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1629e7b8717808c5de66e549e40d8cf784f6f96c3f5bddd737af9178ecac22e
Date: Fri, 13 Jan 2023 21:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673645487
