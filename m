Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE204110C
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 02:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FDA1C433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662172853;
	bh=T6FV6QNbFVXo0QmCtLJSLg+3sa0Pu1HH5zkal9KlqyQ=;
	h=To:Subject:From:Date:From;
	b=UBkuJctnQ+yakAdWM+lxdrfik2M5p9fVbjoOCj4WhnQHL6NlhuwLcVZIMMhsfD/Ye
	 WTzYnimWB4E+scChJFIOae8q3ZKCohLX9EHoVd52kw2sllFeWtHFYmnr6Eqd8UH3XQ
	 akNSjcFJdLpsPLlROZI6fqjhaSxu2wxTQ0AyhGo3qM3ih3JHaWxeC9lAeILADYraQa
	 Usi6WT/IOD4v1KQM2CrmxD86kFVQHVHEE9BXgKOPF+fEG1XsDk6mFQVvu+GDNM2cGT
	 Ne6lC5sy3xflUkHb1D0HMFH/V984PqD0JZKzcX8vMSRh1xGE2VeBQFTsd9TZSYmHp5
	 sqEYAzXlihgPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 552DFC38145
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 02:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166217285333.24007.1560362690593391055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c81d0fc17eccca7056b7574113244c5e1109e52e06beb72d208f65503c6f8d60
Date: Sat, 03 Sep 2022 02:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662172853
