Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 648B017C2
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 16:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 19FF8C433EF
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 16:36:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682872566;
	bh=b1aL0jDhpHYnEOmnbvxxbE/9NvbtR1AD7t3Sx1dyeeM=;
	h=To:Subject:From:Date:From;
	b=KEqpmoS0yDiXM0YyR5r/eBzf1JLgXDL6GkyxY0ttUqzoiS8dFh/jspxgrxKik4lHj
	 7cbbGOTIK3RqnyTqlEW8+4Q5mq23ECzCZ1+qi4Mfsiuig1NI9BCt35tSKoYHrZLwHl
	 RO59UiijYHU61NVId3/GgQiIApINWiNWNm5iJrb0UJ39CBaN0l1+ZIk0OofjkU4Av6
	 YqrkvARz58OrJqfUIVix9g8cjSIrgtEXPMshY/hjX+NLY22JvPDoAjoUCGXPay7lXv
	 JQldnhOuFNTi0nNjZuF7Fh5DJT7pbP9VUxCzkxJjQYr8NG5+sqM7PfITtgpuI2Dmqa
	 gG37WD1NwuszA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF494C77B60
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 16:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168287256597.4681.13014623855345762306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30a8d838b843b1b77f66a12b6f77bb47dcdfea13dc5aa43928cc4b9aa1fa14c6
Date: Sun, 30 Apr 2023 16:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682872565
