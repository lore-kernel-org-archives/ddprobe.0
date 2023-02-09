Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C305748E
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 12:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB6F7C433EF
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 12:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675944066;
	bh=pkUwBRzWqIHTfUHFRx3oF7SoY+iTC6JeMcFJ6vYLfYs=;
	h=To:Subject:From:Date:From;
	b=OGhrW1Ruge01wF8JUTr/mLz2qOHBfAzBZigAgGv3y8e9G6kWGfkKNQgMxhPaXdbAH
	 jlPXGeiD0JiKVTmd4o8hEFuhRk6zTdQ4TRcwhohq54ZLlklTrvdK0g+lYiFyPOfTT3
	 qqrjCOxRc5rLc0iEQ4RT49kbYy8FNqm6Si86kjLfq0L4GXEf1AkxARrYVDJESik6ME
	 gjX79h+MdJ/O6WB3rmnwFFs3/iRDjSB4xLiweJtWk95QBhKV8AwNQucxI1U51G7sLY
	 ioE+rPsmPhkTZdGLwBBstDmL+6QB2i0Ly3lINA+Qk/foXvV1YscWAg+LR67oZLUyzq
	 jsW+CH5vw8evw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA2C8C05027
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 12:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167594406581.10898.14392621073943226600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4f273b79e4304fae9e68a4159a5647747edbf3314cb3e3518f79030ba899b82
Date: Thu, 09 Feb 2023 12:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675944065
