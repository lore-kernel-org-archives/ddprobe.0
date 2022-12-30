Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C99041105
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 03:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83ACEC433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 03:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672369887;
	bh=/UCPVSMn5Z02IzKXSl57o6l/xhE1zkc7zCj/jR9KQmc=;
	h=To:Subject:From:Date:From;
	b=MvYCof5N0vSSLoC62VA/j/wyxfMu68l9YYNJ7FKtJaUKBGy/0jIUIN776niWp7wtt
	 8LxO3fw0gpDxjjMq0kmx4z26sYmM/SkN9uHL9PshG7DPECJXQiO2wLQ14BWRgYjr8K
	 AJNAgUXmrqrjlU2oew9jPstxODGFVtrTW0aonnh2DTNZwod+xr6jnL42ZSPgKf2D1v
	 zvSlbiUfQ5KPLj0WlB6awNoP97Iq1mXrcSIB8PA4qLPWFkj0A1TkdM1107DlysPIGx
	 i+lsznmHUeb77VTARpn3AGqKPwRUA0ss0kCWx7JzK7rFscFzz/8g/2yOV8/hblyQEk
	 Wvypko6apVidQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A069C4332F
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 03:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167236988742.19420.4884876547195040253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f25706bd1ab02235853229aa1146060ef4a7d7c8de19e72dfcaf9c2ab57011eb
Date: Fri, 30 Dec 2022 03:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672369887
