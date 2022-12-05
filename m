Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C479317E0
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 08:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7765FC433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 08:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670230254;
	bh=16wIhbJePIg2JJHBx/EDeDvVHJZfGZz8+GbFk4UFqJc=;
	h=To:Subject:From:Date:From;
	b=VW38hN08/K+XV4vGVTccf8rZaDNNcT4wwEjZsFZiWRj/1LzC4j/mtwlBnebilwqpU
	 j2xQdON+zSkxRBg37zatZpdEbf0cZcDIg7oirsr7ZnYs8oNU0NEDp1BOkCm7YjCTZa
	 4aZywFNXM7Av7r3uzQpZdMdELXMok5vGK1TwyIFqXReAvMOpJJSFImuvnrcSWa3MW/
	 JKqktzCbcuoLCZDMuF/JaKoa/4hTDEVVI9TGfmxKX/k3cBEFHjFHViuXzqOJCsNrWH
	 O+IScVcIKqJiWv12ubMqWLEpQERpcCCCRzswsMC77SwIeC8qahQjOAME4uGrUGz6GU
	 l/itXv64uI87Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5578CC4332F
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 08:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167023025433.25336.17450687160485665624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbcc1c3722ec787779c8e76548e46920bba37650a810df1394621f11cf411a51
Date: Mon, 05 Dec 2022 08:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670230254
