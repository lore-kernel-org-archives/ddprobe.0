Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C08286FD1
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 13:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BEE7C433D6
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 13:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669125054;
	bh=f/OgHzuXsYlO4wlN9jC5vpTKh5S9pEBUQJzbrGSttk4=;
	h=To:Subject:From:Date:From;
	b=b0BOAfDTAYmUJ3wH++OoqPk97CxDSAcTxx4K6LViIU/ClqjCWm5ALeB+k61XNmbIk
	 PcI/Z307wD0G+qvCd2cRJ/qoqWEGeZ8tSncH1Pbl5AnqnyjLRBMQSaL6GDmRU9x73I
	 gWG98Dwi1HX6MQuEI6MO+cp/+i/tavfB392jHAs2OpLOHiv0BFL3Jg/fBNGpqEsbDg
	 7kZfjeHTvA16QF8JP/mxire5s302Ug4bm+/WOD2NtbE3UJ0/XfyRIha4ztS3iHWERV
	 Ee2qtYfL8CnIX4bOpugmeKBV7s/8L5o399ZxES3k/5px6vlyMD00ZJOiX+Q+s5F90d
	 HJKXIaUn5k9AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50A63C4332F
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 13:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166912505432.3365.7426479696616676185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f8abe8aa35442922dc770bd1d1ed1e1f7c95e6ecb2fb27ecdb0f0fc2b26021c
Date: Tue, 22 Nov 2022 13:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669125054
