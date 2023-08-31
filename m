Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE1B33D7
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 08:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9430C433C7
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 08:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693470248;
	bh=uvtlZTtSROUhUjZRAdhEcSx9/2wn9GtHNOqPwxm/Kww=;
	h=To:Subject:From:Date:From;
	b=kXxQBfLVw16Wv3rM+DxBdviGnsTfJNBaIzguvlp8RNtLzxxBGfQq77khuL9n2wfRc
	 FWBkPm47JMYUsOa2wHynsVNF/7krVi0CB5tBm5Z/7vjfDzYxQ0jOKNY2SwMPfTbr3T
	 xNBKsONKexKjmDx5dvfs1ogLjGSQqy1Is/HReW5dmfSh/8fDgsObegnw5D56exD0TA
	 rdN39pHV1lPcEUJueWHEuIo3yGZ53f7LhfTCf5bNc0XTk3Gaw2InOdVbfTuxApMImz
	 /1WrvLO7BIH/+N9/EEz6A7PT6NcnJcOIyQA7Xw8UzOrLTYXPfOOUCOSxpeg3IHhe+/
	 63qi7Agy1tHGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA928C83F2B
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 08:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169347024868.22584.18160200340670050813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a389821e7965def0e4295408967046ebeb77ef53cb955695ef9c9f393bbc0556
Date: Thu, 31 Aug 2023 08:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693470248
