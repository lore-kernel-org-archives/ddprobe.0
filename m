Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1E487FA
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 01:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75C06C433D6
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661994653;
	bh=i35A0hOLD4a1R7sO6gxcR1U8I2uqG8cvp/BCgIkWKSU=;
	h=To:Subject:From:Date:From;
	b=gd2l8lLPf7O8Wxpk0ao5H3Qn5a94MZOZ8OjlPWBSUAXZHO7l3Wb9g45bNIVs09ByH
	 8+fbwQxU+ObzwCOKtQMwwr9NoH3sa0EIcj2XoKw5/akgnCdOjA7QsTVI92x5V4XwAG
	 zUhGCtmhQgej1sAYGnD3WI3iarjmmOkVjbmi3jP3bSNyZnjDwQh9ijSln5iPpDeJM2
	 lvp157dbDTC61owr+9Asmz7uFnNV0ug/Ioo62Qx9+rnDp45EUWke9LZjRdBiu4jFZr
	 UVbarTmoNfP8cPUBVDH/9uWQkFeluAz5yk6RzdKVjbksq8Eu5U3FXxRsnE60ZQQV6Q
	 TWNM1AoUWX3lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54D4CECAAD1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 01:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166199465333.21958.13396597868094839763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 073a217f75809960f68c578a30df1be41b002cefe5551199b0e4441bf75917c9
Date: Thu, 01 Sep 2022 01:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661994653
