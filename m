Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E4C67B
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 12:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E075BC433D2
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 12:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682426105;
	bh=pufoiEyD5WKXd4Lr4OXx1xUZx6fsDq3Qf5Zi2JVo/eE=;
	h=To:Subject:From:Date:From;
	b=rgHmJo+f742r8esWuJvFNWUCqfBQcpttk42+IWFSknYdLwsPS+XnuZdI1R0KgHrMS
	 u5Jd+Xzsk250uCYY/aph/IIOF+V4p8PicnLYOJjYwXlwCk53olk05hecuaEcuwmCWb
	 cHj9EBqmX0BZaUfJWZjgRcsNusH/Y7fkCaRkm0URTAMH7c+CvzPXcyg3YAWsUitSWn
	 3bUQsdz84l95ntb3szzg9WfCGZ1MzA7nlbrjgI3GcKMtx9laUbj866gODj2CIliJKf
	 DcZHaWTS2r18PQl0Ay6uJpWubdLlQZaECjXcL1reBKkzjkv2ZINfH5c+rAkIENq5h9
	 nirHkdyLkXCuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C44CDC77B61
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 12:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168242610579.20246.10914073922074168270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9f683166b03cc1e3f9ed9180055d55c2d06db85c2b99bb18d6a6c8b53ac4363
Date: Tue, 25 Apr 2023 12:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682426105
