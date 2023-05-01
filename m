Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F1907E
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 08:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDCD8C433EF
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 08:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682931486;
	bh=Sos3dANzAkwwmtkn91efzeMivK9rc4GgkFK7HUr+1KM=;
	h=To:Subject:From:Date:From;
	b=nsYXC5o2cBdYYAjrYAUp3u6KxWfYPVY662FbAr8dGNS+/JYXGvZBLQMfS7EVb+3GO
	 yC2WSYn+/um0OEcSlu8B4tAQpab6vwnYhn3F/CZ2ccWSO+MVSXK3cpRgQaAk6Beabk
	 3n0XQYq+TzXMs1qVRvEzZaod48NNYpg9NqQM4WCVOiJnFgPYNdI/DE/3ihGaLiJeRu
	 AH5VszC8dEn/Vkp1LT5fQ0PrYFrmtC8ECZzNmeq92Zw7cO1I54Yy0N+xjaKjrExyHR
	 +yuS754Vjywoq+3greiK+VDr0m2PliiY+VVw2xuvX5JHlWFbIxw8D2rgL3/PSgdJj/
	 SFnCJr4DEXNYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3F18C77B73
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 08:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168293148578.19927.9906472942822855631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f4cdff34d9913fd8ad40404ba832b87c0a10d76836acf97cc766ee5851794f2
Date: Mon, 01 May 2023 08:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682931485
