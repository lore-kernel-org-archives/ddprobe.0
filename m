Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37EE515C8
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 03:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D565AC433D2
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 03:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675566365;
	bh=fQuAzqTfd+r+ljxzUzb0AVCVtjvOLW9YK+8eRRuQ16I=;
	h=To:Subject:From:Date:From;
	b=mqUOTampMN6KUVSLdKMYZaz28pd6uSDTGykzJCbevMp573yfxaf0UwikeHZJcGEsr
	 SxDhAnlECGRQlCqZl67XB8fIg7iFaV+5YHzqIZXhWXdy8+ztjzU4FAAfSZcOWt7N2F
	 276W7P3+ZYlHS3osYCArz0mSbnaA2dhnK9cvJ2eP48ITczCBpmsuFgqu6hBapL6Uqk
	 hiHa0EPV/DLBDSQidMzcARcyR51oqYefyacxy4xlv4HhMPf4QdgrIRyZvZa6rpztOV
	 iRRcBx/+vWd3jvNXuB6er5d4ezbu3pvlHM0M94f/DsJK6KjKzwYWioXb2IISh3k4af
	 jFFVuGbrqcO7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBE7BC61DA4
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 03:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167556636574.18814.2664074437137832532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53f57c45bfe3da2cad4804fdab071d7ca20bce89fe9559fc2912a17b0f808189
Date: Sun, 05 Feb 2023 03:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675566365
