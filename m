Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5E8B10F9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 07:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68CC2C433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663659653;
	bh=M/W1qR36ICP1H1UE4HRVqMnB2CbbHokZnF9acNQMSvY=;
	h=To:Subject:From:Date:From;
	b=ZGrMVvdi5kFjYE2AocTpwmhQMWT3RR79UhDsC4KsNm1XYefIGlaf0oSUtIJIBHf3X
	 WtEkLXqbfWOvNl4XPtoYWJICYVFcgKH7faC412yF6tDjuWwceS4MuZGHo1/VtvtV7q
	 UO/ChYDr5FOyK9amW9pn7L9gcfL4jjynL3Bc/9l14Gg0ncn3+nbIVfaBhNTRIpxUjo
	 BoF362+HQd8zCW5gsynLTNwHrbAz9X3lD5q3EieJRF6vzir5rFwAo6c9crJRYCM42/
	 JTcEgxbXFE1oHNgkmISCliiu06lNWHw2JfLrTEB/amq/6nb2rv9lsX3zAZoyAZsTN4
	 D24AZqf6mKeDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E488C6FA8E
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 07:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166365965331.17331.16296951569467841169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab2dd7df821e6335a4f0a901638c48dfe9ae9fa4205995e930677a55bbfd96b5
Date: Tue, 20 Sep 2022 07:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663659653
