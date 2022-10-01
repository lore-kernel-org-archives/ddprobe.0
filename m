Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4941323B
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 19:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A80EC433C1
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664653253;
	bh=I2mtGYScSJWgc6pZHvM+mJmtsnWTOvyISZAP5UP8iV8=;
	h=To:Subject:From:Date:From;
	b=tpr80YwsooMsH96HqcVEs49EFph+6ajx/Rsy8Ek18Qz7dFO008PDu977ird0kqKV8
	 Bn+/THTdWcKVM9jboRLvAQfBvMjNbpnskCxg0VghRIdWQigiP09nzd4gwmOabu4nqI
	 VtryEviqY74DO1HHj/onE3tcBao4BHOZvmKCw/IUWLgYbu2MeiRwj9QlwE2OCNo+MB
	 iJ2oniXYi17QPbcny0oKC8UD21zzfE3bynzOf0nR6wCyeAo/5xXYA6PaEls6rws9Su
	 wan2KfipbypDiO07wzb2OGG0h9fI9faRztLq1qwRNrjfFqgMjRZsIGaRK95IOAKQu1
	 1LoiR2bsL+jPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B78FC433FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 19:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166465325334.17530.9923621646682238231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00901cf97ff43bd6264bff9a98725d5917e9d546b91622349a66c0a2bddf1f3b
Date: Sat, 01 Oct 2022 19:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664653253
