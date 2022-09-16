Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B998B20E2
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 02:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74B46C433C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663296053;
	bh=Rfif1eQJ7CkVcvB6A8Cq7gHUW06npk5m1pySzP1OYok=;
	h=To:Subject:From:Date:From;
	b=ksZA74BaNvnbtdsx4QVytSfE2SleYqmkUqNkq4eb+Rn86ZT2jc2vOuWvRtX7StcPF
	 BSDrEKaeHRJn52tyW/40miEMQco77OsLePTET4pgqx0Vb/4e/KrnlvF/bfDw/njE0i
	 TsgSPOSp+giZJCtrqE1R4BIBJ44GSBKj08sApIC+O8979DP2JiT7Gtt7f5liLe4E7g
	 SlqSrPm1TNy/kltjfSqZuOqW8HrWePgJzPZwTt0BLPQVGcPtGew2Co+D5DGNBan6Sr
	 +5mYMZzCzAF9tKGOW6l7KVep2qWujSMNFOLDmFr8neE8ix63RvLazpFRTPIpR0ezIr
	 s+gCWZUNDjSyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 569A2C32771
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 02:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166329605334.24846.4172857160395219968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19e84cf859c06a39045b9a7b5f9e5c0f4a5c12a4568ddb74ef0045cbae7d35ae
Date: Fri, 16 Sep 2022 02:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663296053
