Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6204814AB2
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 11:36:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8785C433C8
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 11:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695987368;
	bh=Zssufr6NFBRy69YcxJNCovKvZjbYxupig5lSzX8D7I4=;
	h=To:Subject:From:Date:From;
	b=dsBUx98alqGv8S41cvOSaS9sHJ4JcM+O8c0Vm+7q9FLN5fEO1PvsEeW84f9fhvQ6P
	 S5aeFNamM6ad+AN96wKbIC6KBgdtcAdfmNts9H+FtYk95ySGUAzjqsojRXh34QNnr5
	 wcW8O8LCmPx5ISeGeExfuwyvDYWzcXS6J9OqLlrhbOXaNJDC5UdS44TQkQgDt4uGCx
	 SfVkAXEQZyDFbRK8T5z+1VlEjE6AC2OUgyCYHPSXxbRizHpn9rwXK3kWiJpUA0XSRq
	 pyvQ3+MpdLkMpYgut7BL0ymD7q3BFNOAZs3Qc7tOLwcsRXrODroihbkw9sN5ofyJd9
	 yPuDVgPh+7RMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB301E7F154
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 11:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169598736867.17492.6962203686822508418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f42df949a29144ada368e1045f1f5d04a0303fa2f7e974fab2c44ed17f7ba918
Date: Fri, 29 Sep 2023 11:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695987368
