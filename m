Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B698D3208
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 18:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69B58C433C1
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 18:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667155254;
	bh=jDOAf91nm4FYaXEp49I6ZDYakaiHKRpRmhlkQMvlLVY=;
	h=To:Subject:From:Date:From;
	b=Wto7I5dZ0b4ZSCdTOyWNQ6hB38foYuNpKih+6olgEYcbDBsLDIHErLqh/Ak30nh31
	 sRduXfdK7Nsv3/0uMHJZheagOLcVw3xieZE6mWGyefb4R48T6te28TPlmfvM97LoZ7
	 7wfR8NqmUrdWnvYbobdvNCZN8VDop6aqycmpexQsDHrzAjDaCC0qt+q5yspFMp26E3
	 wxRmI6X36feqA5wat/FPh3f7gcW5gPqkPG0JVOisy0TSwKMKpQKSV2p8xTq8atXSN2
	 qwY4ORSUJfOJJxq4qE6yU5GsglZzRdO4m/+8Zdm3OvMBp+H/Ph9aRFFY6nlYlGsPmW
	 WbsuulJDRtOhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53F7CECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 18:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166715525433.11280.11804517750558984794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65111cefcd9b601bd0d511c2b664210266f84dd04754821aebb234488d49b509
Date: Sun, 30 Oct 2022 18:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667155254
