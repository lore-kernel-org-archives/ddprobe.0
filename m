Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D3E010F1
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 08:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8497C433C7
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 08:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692518648;
	bh=z9Y7MFOVB7m9Y9D9gP7tEdDnqjggrtnbBKyU42n+ye0=;
	h=To:Subject:From:Date:From;
	b=gwRZxj2yTCZz9fm0ObldkRlILwWwACO2feBzUHO5bhc2avM9eH4VJyWQnniWxL4RC
	 15XUUv83Lu1T/S+cbWLeT6l65dMknMTew8SOOe2SXg68lzTP8cS6K4T5l/du4bgSey
	 /tTedZnGb/z5V60AO6j7jOJxoRL8CLCShSSPhNFcMoHgVvDsDEXSIPgesTv2yWEqSE
	 r6tEf0Yknp844KABVx7ofe+xtfY+uQkT2YeSmRTAv2FbkuZWkOg/8fodYQHPahzF/H
	 8mI/H9Y1/PbxUkXZHVYfqg+0gijtapk88S9lleWsVL4mjaO6csWW2xJAgpe7SV3z1B
	 JFBu7eKzYI7OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8CA1EE49A4
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 08:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169251864870.15854.114536640286752195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3e2d6c5cafe9657254a9d70b8f555cb039da4d13159df714e3af34f63d5a05d
Date: Sun, 20 Aug 2023 08:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692518648
