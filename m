Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1E1E7C
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 04:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AF40C433D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663733453;
	bh=MV4ghpU3HxZl742Jt5WFjxxpaYTzYPGCDLoxecl/FDA=;
	h=To:Subject:From:Date:From;
	b=ItVRC6BXKfpyYPgoitjWy93k5x00CsB60UXha9soGJoeefcfiVdQD4WDW5aXMyNxa
	 gArKk7+s8M1lDOLmzq6WYhwe3gZV0LQBl6ezD9HTF+ib4wqTInRTcKF+pwpl9+9e0r
	 WABHeIlwluv2w4ugnaTuWCcdlhMoybUST83ZqNJ4AiDuAeiwyOv06krzxIC9A4S0iF
	 Bdr9J2XVCXC0n9RFVOEok9bpGodqUj3OJA19G7nEuL1BANNUbUnpm92yDhXzBd7YY9
	 PbE/f1HNufc6BIHClMHeh4QG7Utj05xY4B+EKn7ytQzC+xEY8nyfP+i+BprH6NgqWg
	 RGb8VkcOGrTRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 597DEC32771
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 04:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166373345335.11240.4898227667718648789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 503468ef19e061c80c87ad2bbc1b3a3cc2f300e303d597a455f41078b4f55ca8
Date: Wed, 21 Sep 2022 04:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663733453
