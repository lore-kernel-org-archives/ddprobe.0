Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C2272454A
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 10:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C522DC433C7
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 10:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692873848;
	bh=iNHh1TqCdCvPJXDXVtyAWbm2rEA5JP5deyfWaPm3Jys=;
	h=To:Subject:From:Date:From;
	b=HnWVdKfa7USOWdV2riu40gTHEzzOtCPOYwnlc4/ZFoOO4FIyEWout72GIOQK+AnVM
	 or3UeM8HSHcQCCSl2EOCEY/6SVW0vxM6IA1i1VTQk58GUdHLhVCcrDcWQ2+AjMtAGR
	 DlrRnntx3CQZyrBIPClJwBJUbI6GTINN4V2wmBUCjy0SkfPUuHV1GLBnj4A4i4SQxc
	 9IOGhGbeeQY8EMx6W/TjZe+mG5gZP7MW6hgQmJsTbXBxpRS6+uQis2pU0fuYx6tnoQ
	 6pdtkQdowjBcRUCK7/nglkjmLWj0F/HS5or5SVY4GNB6g8k5/nQ/57UC6Vk42efm9Z
	 8akUna/dNWGyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA995C27C40
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 10:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169287384868.5699.8622007254198401243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3883f09c01854cfbe483715fa1d3da6e8369349e254116818cdd6a242bb2dbb2
Date: Thu, 24 Aug 2023 10:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692873848
