Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD06146B6
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 16:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D39BC433C1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 16:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663258253;
	bh=dnB4JIOgS2ot2oiNu3r83VACjFQlWRLBWabPBdb8d1o=;
	h=To:Subject:From:Date:From;
	b=QL3ncQpciI61gZUk07NeJ/OoKfFhfsl7CYAHRs88Amuv3m3nnaonDuDIZsp3FhY8e
	 S4yW1keMv8xHH1TxYah8yN7YuPCRsAvzJjCdXzpjcH3zmQUu64s+HMGtyatfSsIs4D
	 TsDeKpo0ORua1zcAKA44gP17/hub9LeFh85xqzWDXQIiZrjz7H5pg7q3XHKgOPA9KI
	 zO9zzc/BOQnQFHp9z+KANtEkEs42u39o+RFSq5VXfHkBdS1U23rrHq63WwfQm70Ofi
	 JvZWrl/JMms1kVWM+agW4pktGpNZvt2OCI6VKIbHmY/1jGgXRhJS4Q1KTwHUwzZkLU
	 S2j9zh/nIvBow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52F4BECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 16:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166325825333.15303.17183726249166673099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46fae3b397b58a007170955c4b9bd0a03704f323e19cf057e17557f75d20f2ad
Date: Thu, 15 Sep 2022 16:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663258253
