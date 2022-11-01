Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACDFE322B
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 18:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 650E8C433D6
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 18:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667325654;
	bh=nqK6ly6qj7UcIKi6xnFP24FVFENuCzMYPAPPPrZmss8=;
	h=To:Subject:From:Date:From;
	b=vHL8efOdqVsFIzDMFJ6X/OHlKdFgR2Xp46zkbArfGy5IGKshJZYvu/EwSum8yXPER
	 60RG1CYOYCkmZ+/HtOPvtZEkMH0Of/yo+JL24puBP4g41SsOK3nj782IkILX9V7aHa
	 4FLft2RS7jQ8in/gPE/5HBO+4ujjmSBB+xqNlyt7+uojNt1PZnsjqkhYtnQBnSouJs
	 HwWLmwYPB46Q6Ypxk0j/uc4OF4c1q5DddiyZALf53CXiUCZhM1/XwN2smJWERPjumL
	 H08KG6+O6FnrwISG50U2mXaCcoIjcd7tqcvqZ6/Lflm1FlYhOdZszV8JuK91kTPL5z
	 0tvtcDdcHNAdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F518C433FE
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 18:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166732565431.20518.1776830997579209093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 733c25b031412f9314794daa5dc985c3bc60d2968777701c8b329dd0d9a249a1
Date: Tue, 01 Nov 2022 18:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667325654
