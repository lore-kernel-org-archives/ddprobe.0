Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 440151116
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 11:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E47CBC433D2
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 11:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677671165;
	bh=+MBLxrRW9ETszqnIzxaj7kELw1KcxMnx0zpEJ96Wh3c=;
	h=To:Subject:From:Date:From;
	b=KGdl5kTrXva7v357ji14jB3ogJNY3ePhPpW+uIMpo5Kr8TaGTTMsP57FFaIuym87j
	 +NOBTTZr8d4i+RvQEoRamF2l7p/HPDUXNo1xcMAYFN0MeoQkOHCuRDdzLEI/tHTbWb
	 p9bSkfEIy95u/t8AiybYqQlydjEMeRGohry7BXi1IKrpSGogB40joi/gO9kEZvd+y+
	 bkMoti6HfMhwOFa5eUz+O4kYfpaEsKXH3d1OqZtSSc5ycgLiu+QstqZfvuqlAnurfm
	 ULlFJ8erzpGIcfCSoePSq7Im4jAd7wz5K6EAj5H0bM1s99jz9/cO9njeYeFgr0oV41
	 x5MCscMYUWbmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C58BBC64EC7
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 11:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167767116578.25594.14700222464666400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41417fddc96a8abd91135481ba2207a997cb2e9618014a89e0856651436b7fe7
Date: Wed, 01 Mar 2023 11:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677671165
