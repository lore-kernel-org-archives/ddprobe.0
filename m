Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B13043208
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 15:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AB54C433D7
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666366853;
	bh=cmz4u/Hc/U52SY2P0MRkfhR7WUB8/6Mug88PmltEPfQ=;
	h=To:Subject:From:Date:From;
	b=mtiTxt4oiQS7khKym4LJotvINSQc+/kLrQUmuymNxhMhdlru1lYwTmCrnx2t4q5h2
	 VrxUofRWjrmk7NeA3VnNujvXQQMnrAbtyM7MlUsLileIuyJtnRlPulW9vMuu8bGgkj
	 MyvpVyeHww+RFsQInPuanVrSopHGqT49j4UIX77+R0y4S3kIHcVO4EEkT6Yy1pgUgV
	 azmQUeqykqs+AgDJ22LGrhGENtUVPs5Vf/6zogguDJTIbBMgRFRUf8SE1nFl3dUbOd
	 dKBEs8k79uZAVV+5zLOxmyJ893bnqivbnS3Ttku/wLfL7EfWF6/1BagW3tSfF+adgn
	 jK4Eu15Q1F9iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 510B9FA373D
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 15:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166636685332.30206.1387861906464963639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 243aa12bf328864c6214d663a60f601895cc5046fa6729bd77e87546af157d64
Date: Fri, 21 Oct 2022 15:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666366853
