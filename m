Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAC4E1C03
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 11:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 660ABC433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663674653;
	bh=RrdvnffoNm+VXVLoaRTKQxKwhdPY2vu3TtDvYpgAKUs=;
	h=To:Subject:From:Date:From;
	b=dcWYT5pxdhJ9CwcO7TYV7Wl0tR9kj0ctSxA3JhBZ0A5RHVHGW+QOVwKCl53mWYssa
	 g/V+grvLnvVY+NFUijTtEZix4P2bbsG5M3ePIU3KvIRX2F34y94u7SxhRGq3A8YIYH
	 CxWgTOOe14jGYhsOKGl1EMsH7I3NOGh6cIUH7MkpNEYjIoZZVQY2TnILQhhVXz0DRO
	 VklRkV53SFvjF8aDI34rEnHeEbXsPANzuHTq2bEvWv5Ma/dcZ3smUFh5Ah37J1SRG+
	 pRC9CbTWWeio9TGJfwpva9idCHnxIgpfiJbLir2Wv4Olyut8IaPCxjTUs1/QOynUt3
	 j1Gjo9vDbQasA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F13BC54EE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 11:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166367465331.7296.13623333194712134009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa0cab00bb97c6884fe840c5cfbfc4fb017f1b8e7aac3faa540b3c186796c681
Date: Tue, 20 Sep 2022 11:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663674653
