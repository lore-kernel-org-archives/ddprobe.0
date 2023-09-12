Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD6615AE
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 08:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C24ABC433C8
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 08:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694508848;
	bh=6aFaSboXiExdJwuZ+5+kKT8dYnbVfbFulbVKu4hr4EE=;
	h=To:Subject:From:Date:From;
	b=vAAELrUQa1SeQsvYn8T0j6xXvo3RsBAv9t04qPgQCcCzeDu9jfhgjC9NMyYNsY3dQ
	 YUKmIU73s3i7yFWJ+hm901cz94Iic1B03YdzDBAAW88XbZi8PvJACIryVCozZXmn5R
	 Dk98GEDbJVql2wtVhLNNPRmxFgcuRhK8ZIoTohC9Mb5ZvYaehY8Xuv7MtX8NpHE3IQ
	 mL6ivlISoqSRWYGLFIt4EexjtIzg26Glssm2SF90m7T3fJNmThTIw/ZGgqc9ChasSp
	 Kfwss9v5c4kvRTHJJq3cmgnNidNIIZHAq6QN4GdCqDqADm+XsrdGOie2pX2xyG/cb+
	 7Ogs4biG2hX9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABA8CA0ECA
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 08:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169450884869.11320.5588388246643280645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c466a1f2ffe8455cb35b489f927fb5cd45b7a923654a5a9b01e525d67b6e2b59
Date: Tue, 12 Sep 2023 08:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694508848
