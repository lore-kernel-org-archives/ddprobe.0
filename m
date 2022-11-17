Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B96B615BE
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 16:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F0B3C433D6
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 16:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668703254;
	bh=loJLx/y5wDKhoxVhK1k0PZSSbcS3GTDjRg1gGLInf4Y=;
	h=To:Subject:From:Date:From;
	b=eVMqf9cjelK+QJk+deYjxAydLHK0xMHfu0xW8mUvdEweWrd2xVAro+HUt6IABqrXo
	 DsYdfIgcoSgPBnS2m0DIlourIP7sGEh4ZxjV2OWJFCEsa5px5+uFOoE8o9DJ1/QjcJ
	 jlOjYaRTZ5dNtptXM3QEcoAkRJO/apGqmhwI55RMgqkrtmKVJkmQuosSNRuTUI1Z3e
	 RfGTYh0JxekKwXZPNBavjyTkk9Ky0zHw4XF1ASNfmwoPcgoM7tlGURk4Rqt25oTuku
	 7+UBuMrqMlQPI+MQS1a2JpgF62M6TL+YUjJoKK/I39/2FX1O9HX/TryD9/Jw08yetA
	 aqmVHyldvKbHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53A2FC4332F
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 16:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166870325433.3759.821674641219171601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf08d0e46af0c9cf33509f8a5a44fd63c9980002ff82e82ed44b8a5c2defc911
Date: Thu, 17 Nov 2022 16:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668703254
