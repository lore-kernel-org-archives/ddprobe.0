Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E552E0FC
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 20:59:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C983AC433C0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 20:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686862748;
	bh=heu+8Isynukjp1gm7mNdPYlHaIxW4kWQvHv8bDxyU8I=;
	h=To:Subject:From:Date:From;
	b=hGR4KaGbsdjfjMJW+t4yrSrsknSGxLwk/h4j8hnn6F6A4Qg00OTVxUKg8ydBqPrUd
	 IG/XNvYNPRAyzHWOZ+nv87WWUvnf139wgD+bxz6xNv3Q3bkVdmuc/NOOeI4LV+BQYg
	 fh11Q1/rPb3ELvvWR+Mnl48VesG+FENFY4YVSluWqNEPm4kLFxb7U4bGPqkYBrImaV
	 zPDlcZLgUZ3saVBODxsdjvPUUoWBqfWRq5fRMZG+I6CRmT5t/Obk3o48klbJYFvp98
	 +0mFgonN07F/TJikpKihPBllfAEgbMmQAXPj3bThcdEZPX8K23R39KTEYRuyioq6OZ
	 R8haADY1erKMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBBDEB64D9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 20:59:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168686274869.19868.7810162290725261622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a039949d769bade31fd0b2a1c5471bafa646e184c5c75c50d57daacf35857dfd
Date: Thu, 15 Jun 2023 20:59:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686862748
