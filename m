Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD4777E
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 12:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74C84C433C1
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665403253;
	bh=mdoBU/1vISFZAC/rJfBkf83w/vdLeaj1uwxtiKa1UmY=;
	h=To:Subject:From:Date:From;
	b=UJp09ULIlohr0MW4qJjvmVwMbXfv7+sm87N5vuZJdNYjsbDNvcrhYFjuEa13YgyWe
	 yMBv8qlMFV5mOmbzSHv0PW1WUKqcG9uJ+4ET01fQiI+j2RPA2yqubpLAvMu24AcJS4
	 iR8Sk2yRQS1Agdcn9wSsD01XpgyFd/m2vGNoXuVHAbOKW+oU+bo2ueEKhb+ySlvQ1G
	 TccbxxXxWuR3Gd2L61/oxJKjVMWvbvMR+IeSb2ZF/c8lxS5qpyOaKJJJslQ0qNymSk
	 NiJw/WYY/L2Db6y7USq82qQ2jVcvoHXND16ZwnoWXHNCNdDYoM4Eo5JU+gn/myI1Bt
	 fQZyyQEoWQ81w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B53FC4332F
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 12:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166540325336.23682.13319512055887226237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae4c0d649a6f05e36870f1043891fec7415d3cc813fb682cb923c511ea382e47
Date: Mon, 10 Oct 2022 12:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665403253
