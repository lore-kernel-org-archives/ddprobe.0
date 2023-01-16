Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F17C423A8
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 13:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F423C433D2
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 13:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673877087;
	bh=rlHu0l5LgKotF1IQvxvbGqh+J/QtQj8TSDzbKYH5S0c=;
	h=To:Subject:From:Date:From;
	b=DR0fU+PmGqiyLQyUP4KyQeWHofw4VhnOE64zioJaMXtOy4TWHOzD8pqHrOSHrOWd8
	 z910PVi/DmSkj01PbNlQ+5DRvVrvu8Kwc9Go2QuDxXF2KHSQe0c1bVtUfPRpTyhQFS
	 Tx1m/yDsVQy6MG+VxOWIeRzZsF8XmBVA/2HxcJCL0mHRmTYS7aGEg8VZxefrvF23uv
	 pTMnIXr/3E0PGOJV2X+fT2V/weAtoHsmyYUT0VmZNJxeMtjykEDTtfnWxwggYo+NIS
	 j14igPESzqp2z/iQhx240/8xvc3esZwodUpDuNDeVTxvMiSqVPlU2UDLcC+ROs5zl7
	 nrkg9E+edzBhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79B4DC46467
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 13:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167387708748.21344.1066894779315869505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db08609f377789d5a640ed476346edbe60804fcaac4bbd3938b743f6959f271d
Date: Mon, 16 Jan 2023 13:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673877087
