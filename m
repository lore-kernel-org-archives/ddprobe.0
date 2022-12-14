Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC029197
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 10:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DC2AC433EF
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 10:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671013887;
	bh=UPJH4O4Vquub24moxCvuX049Y2hO3nff+QxVJqk8Pqg=;
	h=To:Subject:From:Date:From;
	b=sCeLTFwIX77AaJpJ9AxCYLqw8Mtxn0jYNnvYQ24HKny2vWZYmujNb8FbFJIguMd/1
	 t0xj8fhxqRdah5UFDB2skS0sFz8o9o/vCOczT9TpmcT61mu+c2NA+R3z7sGIiVSNW2
	 9q95t5dn5edq37idsffRmh5U8z459qlz0fM2yfc0rLR6xWdykKtjoei5JZMYU/oQJs
	 /AetN1BOH8RCTvKF/w1CeEbVlyfQXXQ21z2kjPXMGlJ2FuspreniNPlqD29G762Ms6
	 nvpQ64mqkt9ZXME34rXA2wwT1RSh7URFkgRArlrVLTE9Wg0I1M8L8Km/3dOIQtCjyE
	 9efIHP2+UCYjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65241C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 10:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167101388740.18986.1119472658507562358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48568bda925b455e62279cf69383fad30361a49853054299b8d9372c1c4b1601
Date: Wed, 14 Dec 2022 10:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671013887
