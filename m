Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D1A71FD1
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 07:56:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB072C433C8
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 07:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695887768;
	bh=/RkGmACzlyqIBV7w7BtWz1ksFXnMMa9KJz/YqZxU0r4=;
	h=To:Subject:From:Date:From;
	b=VW6c4EKF4hr5fG4ATWkg/3Mj9WhbxUUTf5fZCo/um+39z1CnYGATExe3bDcYd2sOe
	 TPWbZTNo+q0E7UAGrGFuA1lr/S6fES7b/Jdi7ui17IIotc+gmQRgnWh7/KZCRNGzLd
	 BrNQABp5n7W5bgbMzuXCyx16qZuthsjH5JY/Pmf5VBB82HwaCjoxu3UqJyOc+pa4cf
	 gwVwFfHiI5dlwAINZeITtpXYQi+J2RkDP1PvzRkFMRVPWx33phc1eth+GcXzerVaz7
	 UGspikBS53VDLSBT2bDkScjxn9wiG9zC9eIqA7fj2/8SLnRaFoLo25zujCAFOcsSe1
	 bHb8f1XIUvc/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2B1FCE7B05
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 07:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169588776872.8875.2328750444827092412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84786a7e3d248d7bf3f4714bbc75f1166e2c847dca1feb7a36e2804d7ba334a6
Date: Thu, 28 Sep 2023 07:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695887768
