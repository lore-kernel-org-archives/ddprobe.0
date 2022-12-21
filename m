Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E438D23A4
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 11:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81BA0C433D2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 11:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671621687;
	bh=Nm3qIIDBofl56b4T9T6W0hYEIx5wGuCDo9u+bc5Dj+Y=;
	h=To:Subject:From:Date:From;
	b=AbFM2AAvh5QBHM88KFqGWqaOR9noJLG7ZMG8XDTgxl082JwqBx0OQ/X0z5/EwbXjx
	 x9UtP5SMhAblph5vUjqCUxArgUZ4FisxF5pJ36lFHd8eKcqcIGDEspgG6AQ0AiZ9rw
	 dbJdJuApnF/3DvNiRfzA4oZSXMNl9Wq92huzlDXlTDF2atvN+cyJdrL408wmfsZUTU
	 UM7YtyuXAI5j7yrsJs8r7AKB1QMx+7w7Elnh/Q/rX38pxODV8YwCnMM64V4UwqDNmx
	 z14bbzst9MJMUCS3yp3N0th7JNVAi4+q7bXZPp8P4h2asSa6t/yFayICdJSMmha8VO
	 61zoWX6YU8+vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 664DBC4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 11:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167162168741.25908.14150516556762691055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 671680a82437df4b78c7c94208b8fd9c2f1dc1bce3ba11bb4fa5e32be55fc4de
Date: Wed, 21 Dec 2022 11:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671621687
