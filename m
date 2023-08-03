Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63FDF6FA2
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 15:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D07C433C7
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 15:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691076728;
	bh=5dGRgJLyTnirGU6zWMbrcgSXTKYm4EHmxVZHc9aIV0E=;
	h=To:Subject:From:Date:From;
	b=RByibsGC1v1ax3irqu11ikVnZT7IVxR8cGmVnWTw0qHEbp3//n4sUHphOFQUMQXIR
	 RTwwbN9N44mm5jb0YwVbqSv6duMPaf8u0b98zNWLVywoi5wfLfzuTc4RvJO9VSzo30
	 A6MRQnQM9IBg5qbHt8Bgp3H++fk4H5/iP0dLUPnu7hnG+5uVkC4mljIJboEEmiKxEp
	 nlWOA5lkLcWbhTgQbuRV2/1HqSMddV/MSW4F1EDH5MEJKiYpz+8A2qW/KkkxEOWWnf
	 PW7JzbHJkDiw1DmyxGcLBHWLeW6DjTQKVk+MfykmtF93l+JbVfbu/Z/1kOk4Y8yrQU
	 FXroDFzK0qwfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B225BEB64DD
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 15:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169107672872.12049.2348411697781142577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8678134e3a27047968d01e0c9445c016cfe656397167f8a884ff82f0b7b9e40b
Date: Thu, 03 Aug 2023 15:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691076728
