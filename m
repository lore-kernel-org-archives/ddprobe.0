Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBFA9EC7
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 10:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86D27C433EF
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 10:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672309887;
	bh=s7+V1EvMV8/od/Bp2Hd5v/UZ7QwIt1rdORbMesuKKBQ=;
	h=To:Subject:From:Date:From;
	b=CDMxqueuVS+lECDl4pkBypPe/ffIDDCQSBHxb8mR6AfLkkr8jQpggWIJ3LZFhDUwv
	 GQFBjwuvcomIdgnO9qzSZSHHpnDGLYAdLWUpIky0KYxkMsV6NoZZp5+aG2a2ljULV1
	 BDDyOxHp6M0RG80m0jjIceSqVl2uCR5A9fLd9hdxTkF8/P6FJx8ZhQUkT5k1vwit9q
	 Rj4GyCkbRLiTWhWl/zSL8/tYSd5NQBNIvCzGmqPXVBRkcQE2drZd1pFxQ1CMmlrQGd
	 STWovTxb48Q8L1t+jmju7+TYyr+3pmlwVaqcFOHrCWSZGGAflEpKyeWCSmTgT935W7
	 uZLKlhIl95TJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69337C4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 10:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167230988742.12824.12365685261624625560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31840bf17a3ae2c38a7575a16eb229f558872eaf40fca0c79218ec2fef75843d
Date: Thu, 29 Dec 2022 10:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672309887
