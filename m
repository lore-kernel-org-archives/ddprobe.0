Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 042EB28F7
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 17:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98912C433D2
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 17:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672420887;
	bh=7Kl/rtkNR1Lcpc0fcO4gW6+dhS8fXPGIr5VHrnfNJDk=;
	h=To:Subject:From:Date:From;
	b=l5H2D5r2huAmEzwnBBBb/0gWjIy9kRBdICIRDgNaxzhj3+nIJYcE2RfOleike1Xkb
	 2lhYlXueSntzxzJZ1JABsg8F5XViCCUKWyoV9h7yrNDTSG++FG6DFZIJX89AO8xHpc
	 hJFVOJ+6okINnmGYz8fPi7fPD1ED6lwZ8v1Qs0xLJctE51pHrdbo9UorP8zsZPE6Am
	 LPvZFDeSjmzVtXQZ8zA+/0ZVE7NtBZO9c4qJCpWEbSFFAtXqCupWUHhBiuCcSq0UwL
	 RepJTloolce2JDWY0tm+0S20CyU9GSEEU3kmOfcYPpbjFV97L76TWmjc80gvyCYeNQ
	 Ju2+pl0fPP6mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A3F6C4167B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 17:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167242088744.21200.5404773417799514744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6a3d724a312978ec87e7091109c53456aeed9357e11ae77bd45e5be40a71d01
Date: Fri, 30 Dec 2022 17:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672420887
