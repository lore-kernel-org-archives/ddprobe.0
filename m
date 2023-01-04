Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E088C7C
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 03:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83A4DC433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 03:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672801887;
	bh=i/BZL0FRyaC0Ctgc/uukP0nm6FeuNPFV8gshCg2GUy8=;
	h=To:Subject:From:Date:From;
	b=QZdBN4nwjJwQxT7bU7MO9dEbW6hE3PGL5p3KnyoD4KF+vu41sdycUoVLI9m7QXNsU
	 wIy6IFhgvDdnPMf9WZ9vkL7AWjKqVyzKwFpVm8qqiF0BEcGUzly/3/TlhyvuD2n09G
	 3KgnrSzOPjP/qpZikg0cu8O4Ob5s643J6YYr8YfL9GgfvOd+Re+1uxRABL4dV5YJJS
	 AAKAC1Nn/wFURU1GQDcSqVDurewZXZ8+Jdvz7nV+7h14ZhHcEyeLwbimhdwSe9Ffak
	 T7gSLBGdMDtKZj5hjv1mddCQv5+yR6tByF3dNAXpObNH5nI7kCWp+W8PmWd6rRvnrL
	 d5NAe2HMbjf8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66041C3DA7D
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 03:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167280188737.11868.4271377959689902754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 719dd807b157ec1ddb6302c36cc746a8da9e8248e5d0e9ac15e2bc26ba08ace4
Date: Wed, 04 Jan 2023 03:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672801887
