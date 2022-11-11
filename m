Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8DA9652
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 08:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 895A7C433D6
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 08:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668154854;
	bh=pz6dHN5F93ARYAKBkE5HS0jfdwhMaj75EWqwXdVc5RE=;
	h=To:Subject:From:Date:From;
	b=b0EWVrXerulsEd6uw94Sr1h/RzshdFa4yEhhusjTopt0qCFQxXxfL67sOWDaWQtaK
	 90hpMlwbfCz48Nc7gfbymF7WDgWCna1FCe/vJMcw2YgvG03Yt02+ct4YD13e0eG89Z
	 tI+tUbSTVQUtqmLzm213Y5Xq6DqEPdiVFAg8y5FHOg4NHPQ7ZYJt+efebtzoKVUong
	 OI37ajrCzu9k/9uBI1lRUO2b3/He1eyBtEhDUYGRteJHTl1Ac2Ci0IohUFz38Q9nWh
	 uoTvpQ8JAVCmrNge3dOm6PySg9hN/9cmZaEoBouQk3qcGwigu2fY4QMuyLBXqBHSDD
	 HLLVwhpULUE2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65981C4332F
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 08:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166815485439.5813.12242993598437010362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fa3628e28897ea37b43f1d6bddde4f2b10c9519e453e00a29b5cfe00ba7b344
Date: Fri, 11 Nov 2022 08:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668154854
