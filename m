Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9396135
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 12:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8BB4C433EF
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 12:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678192145;
	bh=wnpxdmX8H236veo6S87NEoTkZG+IAkj227JzAouAZ5c=;
	h=To:Subject:From:Date:From;
	b=ERXkbsCZKw8WHBXzZxw1lFiPTB5VnuzhGkr1aejMJNiLCbO88TD84eogeOwCoDiL7
	 Vtd1PMJMjxRpPr4/ng7VPl188KlDeCiWTe9OJk+XUxBwydu2JwatfB/aeDyVmelceE
	 azYAJLbNNnJqTWYiQz/dR226eZhmj8dZtT2e8tTRIn7jhYKgPrNWuftGtnM399YIki
	 4SOfp2iklt7auvCv8GU4Ri26uJI78uUsF4lzltoOnoVC/66hW5Nh6+lcdWfy/2fOKr
	 BdTNElDnfWHPhKitkzQqNtHT1+IV5mnJoQOhpMQa8PyE87ouOntVRU1IAehOqupY+3
	 qYBTyei0OVCIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE3A5C678D5
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 12:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167819214576.15809.11811218067434358388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 553acbce60af95decc81610bbe7bc3bb1eb1a75cdb3153646ce87a6bff6713c8
Date: Tue, 07 Mar 2023 12:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678192145
