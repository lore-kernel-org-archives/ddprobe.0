Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5655B191
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 00:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C51A1C433C7
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 00:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694651048;
	bh=+cINgXcFhB/lNQeMjs6BKdAcrWVHPheF2H27wyF8e/I=;
	h=To:Subject:From:Date:From;
	b=kPzuCt69Ut7wLlZ/97Dl+zlimMd2mRE7zGUv501tHZadg/OF3yYG/43DqaGcidCbn
	 IcakO9f/2XRs4zRyBH3cGUcrCTU06GyiObVE6MQsHL35crG63ioIKmXj4V3Vju/VQd
	 hnmyCn9wpS/bXzMBsuxbZzoFvLBDx+zXVDAHlHng0k61rtCLSSG/sfjadYWiyM/Nns
	 lS8gW7eVFMseyxhedDV75EQxJZrGPQdKuOa3N8PtiaCDvHvujwsRE1eWDUfQXFeXR4
	 opVHzpBNRNpmqcozWtJpFDJEHIqDVoe+/upLAhmvd0RDH70HbcxSWTp85ZvTKSiPaz
	 3feOzqNGWjpfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE9EEE0212
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 00:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169465104869.30944.11577158352876234305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b15b2bf3a050a05c70929df0778b969b47a6a8d940f4939518aad9d61ffc1d0
Date: Thu, 14 Sep 2023 00:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694651048
