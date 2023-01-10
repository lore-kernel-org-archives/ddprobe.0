Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E275217C7
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 10:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9048EC433D2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 10:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673346687;
	bh=ois/itp8442y50oGX0Sal5mibbKttM3P1xDNk3TNSdk=;
	h=To:Subject:From:Date:From;
	b=TDbMiClA5W81rKJkjnhWscgRhCuXY7/l7V4VWQoMbaHsql+0J4trLnuUhuoyuYOSg
	 J4s5V4rn7tAMXdxGAVWLVT3mgn9y3SQcQ/z84yX6vnjyGsHBNuEnLY8t6XLSnMF5Sh
	 zKsv9I/wYbWgbnpu0fKQEiwswrRdPYHycaHCTpId+KjTf2KnW7lSTXQIcisJXjbJZ/
	 8nbfdRjbrf46ywSgqHt0QjCxCsuoL+ozokjJLMVgSSc5TRAruVf4afyjbijF6VAnDg
	 1QDIKBLaFtVWveOayD/2WVfi2GTWLAvMefAWDAyZh8oV/kLCIpMm9x4lO2lsJMXKnj
	 L4EDlbWTJ7c9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68833C54EBC
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 10:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167334668741.9832.3626678239748715008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b21d02df1ab0f0f4de3dceef967c813205adc338396667eaf91c3578658ce23
Date: Tue, 10 Jan 2023 10:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673346687
