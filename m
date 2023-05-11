Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 530BD1C754
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 09:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA0EFC433D2
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 09:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683798845;
	bh=TWV0Bj7LEWYYBDV06n26S58WnyIpockWsKCX/1J+5xE=;
	h=To:Subject:From:Date:From;
	b=ngEdj9FytFGadsIMJdiDiX10BbsewThwgI7+c8a582hnp+ztyPXkjI58UfhT7tGuo
	 zEe8l616dnjFm4sZ434XqMPG1lcfTyc868kiRbfHSTXr1esx2IOtdKhKxfYL5udg8p
	 AweX9qyF7wJPussfxDrOYUfFhGNl0RC3HqzkFS/iz5PafVJRVntDjljVRWDgOSEHTC
	 +kMQoBAzSl9OilO0vPH4cpIwgTHIJlWizPDRzh5PX9moPMypnYq9PV/6GGqtVo5CwS
	 tWxz/OMjv0cLudafQPel9pE/myf7k5N9/WN2k/0MnmQ6Lnov1JnKMCs/MFfYLQrdtf
	 jSQmzIDwCShmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7469C7EE22
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 09:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168379884580.27309.16872438959498374704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93adb9a60a08ae31f0df76a819aa0b6692bc3ef07c6a3f2d0c11c166d7b81d07
Date: Thu, 11 May 2023 09:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683798845
