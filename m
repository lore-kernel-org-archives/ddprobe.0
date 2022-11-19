Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5A637C
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 05:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D442C433D6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 05:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668837054;
	bh=xYkLki3K5O59c/Hde4EV7/JlGn8Wz92MqpjmINIAMY8=;
	h=To:Subject:From:Date:From;
	b=OCNFI4cow29DU7aoxZ+vtlL/pUaIhp9ntNPOsijHpCeZsWzPveFMfKFbRxS+xH1+z
	 Os7OIWxSrl+eGtaouwe12bA+QSkConnlbGjS3MgJFVFTx4FMBJxLPVAzwTRzuROrpT
	 Wvb/WXnpTVUoxTGytRgD5Pc7tgvu30koXnIEHhExDEhHXp4VDQ/MfOyA51JzfO1eS+
	 Qh40shgoHtJOJgW/AYr/5RZEwRP6mq6opXnSHuNQXgVHfwvY6luboJV5Nr2rWSHaee
	 CJQ2c8YLHwWAYGjL6fSfer3kVffW04cOQ5LQbF6fSJgGFDt6KKZz5aUdj4XeFtG1FO
	 U4LzAC9LbfYrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53458C4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 05:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166883705433.7609.9392357454682253902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3788f0a73bbf13f2491309f30b2c306a9778413240a82557200ef7709583f3b
Date: Sat, 19 Nov 2022 05:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668837054
