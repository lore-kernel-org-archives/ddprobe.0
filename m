Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09EFE8C09
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 20:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0099C433D2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 20:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673294487;
	bh=YDPjxYdn8KW24caSONFLBoNB6pkInSMT6P3ONYotidI=;
	h=To:Subject:From:Date:From;
	b=Q0JCuKhIvunGB6VXsgK2UTRNevP0CzVeY7snLWi0uZ+OpXvk41uqzzJkDbGzLVcwW
	 IxqJcb7V7v/Y/NjoCTxJmS+stsNLq+AnBvjLbxsuWA42+g0l/TTTxoBiJIiR57Iqej
	 rnMSqyBU1dKSqhfkkbCE1uDiBh1O17ONoBvpX9Z6YpI7MjOBSjkro3pxWSpBJySNKz
	 jEKFIF0QtQurekFMYTDdWs2ltJpP7vhfC/KWaHGAfBIcc3acaj71B5BGQ1CwJlFTf0
	 a+zAeXpcLP8pV+Aj09bGFcOsVTYdvgnkIeQIcWAjlvlpn1Sp/MABNucu8b52sxjCSV
	 w51eEbw0/OOPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81379C54EBD
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 20:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167329448750.7886.8609936489774301879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61551aeb69f864a682c89f4b5c61ca1ce5073bbcbb77b0942e71be364e2fe44b
Date: Mon, 09 Jan 2023 20:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673294487
