Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4118653B8
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 16:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD101C4339B
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 16:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678118825;
	bh=NKrZbJJAA3HVfNDo5pwKSC80+2JkKW1gaFQm/zYC7Is=;
	h=To:Subject:From:Date:From;
	b=YjSro/i4TPcermh5V3FW9EECIYwWaAl0MtVQiDrvEQcH0BIRm9rpEv+m9w4zacM33
	 z8hCxJPqWQ+1OMfJlCCk+u/RGyYLsHH4xFs+lLpNWBXrnTA92CbrEWzT0aXhdLiHIn
	 POeYrKrBAWn3/EwP3zzPHP8VFjU4gKydJ4TWWtbYObjbScVgQ1gZwjtH04MWet9MC+
	 J/G8M9IWRcaMQEi3ADSt5WJir49qRfBCNNPR7GwJnvkxVUZ3lA+Jxkjuxztd9M8xX6
	 ZrXgf0Xp2hu4Sq063lpoCPg5G/UG47oyzEd//nK5bZ8FsCH8wxr+Q2Ne5/YuOW8ern
	 IK0/B47u2vkvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3658C61DA4
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 16:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167811882578.20662.2018711260246052623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63dee937635b3691d40a0e2fd0778095d0be563394c33e4978c99f4649ae39f0
Date: Mon, 06 Mar 2023 16:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678118825
