Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F409627709
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 14:15:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC2D9C433C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 14:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695392108;
	bh=CEgObgKTd0JQkZzin4AwHzHazeFmiaEgb5JIQzoLMJI=;
	h=To:Subject:From:Date:From;
	b=QWYsNNYQ+qdc3wsU3vcKK4HN3J6jUuNedvhhu8ni5H/0iM9lgGAup2KoSN9kPKDel
	 mwFrElPiXU7vZrRnCv2VdJLK2lcfp3eDvHJQ1QHG4fRRLty5ivSnVXs5ZkT8DVWEpe
	 IircMSi/4LiAOrwmNixCd6W0rYjc1bCdcgJa36sYdij1Vi0wCN9i82DK5jD6w/pMd7
	 UarFbZ1Weyt5yuQ4IoCkQivH18K7YUTirnYtwb/gnU+uXAAsMwgrkTE8JXEXkcCT1z
	 utSJ9VB1YU7TuhBIOd2fo1q3tXQt7Ggz0zsYHgPnzmJRpEpGAvmnHQtr3URUnMkRt7
	 CXxzifR7F2ePA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE8CE6FE36
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 14:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169539210870.12044.3505069115466467309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4f666fb176502b4996811f1c59feb6123ba07adb8e8132153602e978806897c
Date: Fri, 22 Sep 2023 14:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695392108
