Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3498F849C
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 09:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA9F7C433EF
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 09:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685005505;
	bh=m+GHb3bTTFtdB8gM9+xmH6/VsOTZ4WTdbtjJZie+E+k=;
	h=To:Subject:From:Date:From;
	b=UxDfGftYbwCfT3tWfYllnJx7RUCMyfkvDwOl448aK0di14D5Uf/tsA45ajDuQ3ldW
	 P7KPqZ/7VpAqi1DvRdYhQGceZ4R5T7Z5xu/Sk6ydsrH6e/sZqU6Oil9d8zkIq3AwD2
	 47wDuPeJ0itErUWiB+0Ae+RDW9kVZplecLdz1FUax/1Uzv5H6FZzJunofPXzzQUaUX
	 FrpbKFaoK7qvD392EbjfQy6jCGpOCcL3Pf6GtDDTc66EtLF5OsTbP+Ty+ifW6QhTDN
	 1NKrZ4X/oFRO6xVMwzIP5m9jxpReGIWmattR3T2J+bRQTTArT6jZsY4HbvAqILRLUz
	 wLV9FRCVwEIaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE653C77B7E
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 09:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168500550577.22487.5833253427995296663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cab297c3d057951604391d59ef9a4e453608e48badc29c24e005b26777b08087
Date: Thu, 25 May 2023 09:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685005505
