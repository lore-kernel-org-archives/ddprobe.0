Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91934FBF9
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 21:40:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 54DDFC4339C
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 21:40:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684186806;
	bh=yPUhaAamBS883kj5SaaStyP344MQgXzi1h3sgGw975U=;
	h=To:Subject:From:Date:From;
	b=Dfch6gWksYeVm4xv4CxQm32iNPd0D40AUvY2FkL7W5QedA31dcUb98k1Aozq80w06
	 C3nFj2OAMs3x3+lCtkYgdJoRTWX9bazxiU9ha38kGRJinQ4CLzSMu2kVYtWIHwzZi1
	 KWsQLww2S1Q2xRphIfNmyqfL6s7NcJ6PAQJU/OsRpwqbi/SJJdkmiboDve4FEny0g/
	 b3m4pqg+2ntGFfdSdloq9xVTGqYgVBMCZ8YdjwPW35H9DTGdpVwHyD26EI2aftvAir
	 WGiiL8Kbrk/AknU/J+V2rCWqkbVm3M2axHRXgfZpCG9agnGfFcRjyHPsgZRY3f+Ai+
	 +C5+96Nh6hyig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12CC1C7EE26
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 21:40:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168418680603.11930.18047271766764608726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 657755adbc292ce289a56bca0838679fd6992f1585dfdb5717bfcc4fdda9dc7a
Date: Mon, 15 May 2023 21:40:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684186806
