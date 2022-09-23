Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C26474687
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 21:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70332C433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663969853;
	bh=Jx6F2J0G/aRYa07ICkQ5/UdTIhFBOwPLX+HujhEXZew=;
	h=To:Subject:From:Date:From;
	b=sWKb02gyUK3zWTzEUYSMfEzs8+Fhi5OoBjgOM1jyKa0x13n0RknnApz709XTBFGDb
	 ou53Uk4gtClqVq1YgLPv+Hr7FDyH7f7/f7Hw9NlhCi4JRqmiUR9/7AcE2w5HNUW0a9
	 EbH9Qg5k5KxV2hnVxb8OkVZNdPjVxvCEe0C6n9QQesxFhV1wrgnBwlvFtSFNB0sUsa
	 p/g5Uh2lf/GTK5wOm8QtyZqAExoAI012rcBMY6Z6JO3D4KdiiFc+/zySWlN0/3USg7
	 IYEkKz9FCGuV4wrijZUmHklRcCaHlHCBLbPrwbghL//YxbtZFxJDeUtHZ/7ZEAY77h
	 juxQ2LXR+uhXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51A64C04A95
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 21:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166396985332.22434.14630354447425067809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4645326b533c08a60041fbde713930968163357683653bbd1367c77658bdb7aa
Date: Fri, 23 Sep 2022 21:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663969853
