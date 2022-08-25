Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE99D1FA7
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 07:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BAA5C433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 07:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661413852;
	bh=MQXVT8ls8sCC9HagGSMWKuPnLrdIe8ZcVZJSwitrPow=;
	h=To:Subject:From:Date:From;
	b=l0KvlFaRSmvtmBVA5+aKVDCjWgVO1v06WZAE7nPmzzc9tuD44+dIZskaYmZ6VReKi
	 2XkIO119q+peizERF/rFdhCcklbDhTGiQZiSzM6KEdi02cXAzEDhfAuKGH04qc5+a5
	 9kMG4ysDR6VRaaKDS5rhnHdQtOM0H5GJS7OD94kayBQ1yCLfCzDVYQOUqdsv+Fr1rr
	 u37NXt5z7If57o/MH97NOrXibmXAKYyck7X7IU2LIMGYzBR9jy0Qg+AWbJEszZbt57
	 dVxUK/aBR6It2KZjCRwlWusJebO/yQFmdWPv9hdJtnYw5G700SN/zPjw2udslUnJUW
	 G5zz32pJWGT3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52483C28D13
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 07:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166141385233.19913.4945856808914051857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a1f0f552c115c17a6b68033187f14fbde07d433f4134b12af2972b2c744fa09
Date: Thu, 25 Aug 2022 07:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661413852
