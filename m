Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60DDA28EA
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 09:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 012A9C433EF
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 09:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680428706;
	bh=/d2+jfcK7MUuNNuHvclduIrhNAGu4VeIu7SxKcU6Sa4=;
	h=To:Subject:From:Date:From;
	b=ZauSgyCChOB8rcoChymQDW51zCr984//N7F0QQlr3PgBdmMCSYlWoTABngE2R5UNm
	 hVegbpwFjpZGUDQpdJ5w7ExeDMQmiwqPMO4d0cfe4vkdetEwDQ/8tJIh/5okQby2vZ
	 +Bw/BmdITwO3JofF3eD4liFHJvfiHT3unVt2qxDyVov0cM3kKvAunsOiV76yjeW7Dv
	 3T2Du7GPCZLmIT1M417xXmiop54xV4J5QoqMzi1E2zt3jU2wtZklyd9JzLcOyYUTC4
	 gImnpwVvZZbSA2QI+wWafZG4sUTu2x1KLhwd+g1CSSCxY+SVOhk0Ck3xxRaSRX+eSU
	 HOjjUk9DKVQJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3B1EC76196
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 09:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168042870578.5924.15681987544957163112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b60c02971d79fcc59bda08616993ffd4878ece6768387ffc02806042e4a1cc3
Date: Sun, 02 Apr 2023 09:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680428705
