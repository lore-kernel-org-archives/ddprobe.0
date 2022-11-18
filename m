Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D64B3EBE0
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 23:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A95DC433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 23:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668814254;
	bh=IXztdq5iV3UnbBjgKSefQumV5wLiylmRi+GqecQ7W/w=;
	h=To:Subject:From:Date:From;
	b=CGyr4cHrnzIFrLtShxvPuOCTCuejkek/oxsqj4WYy2Y/LT+sMPUqRUBQdIce4KbxW
	 iEAWs5eZVBLlpnryIsNYWui+IRKEveaygvnh6a1Hd48SMupODi3BqqSD64gms/GHSU
	 3wydDq9h1MNkmZTLD7+qBlVfXtAEBnj3sltn7pTsJW9LGKMZd54rrwiapSk9AM+iUe
	 jSQ7/PjMNY51lyIGXBecz+U1wgS6KOGSi7t+T0Ij+/NVmHAji/3LjV+P2sE9gTACy2
	 SqCjFLj4jdgvhxETxpjQohnkTHnZGa8g1ydzEYjMhS0rW4wHWFgnXR6s5ykTRldTLs
	 ULFV4KfLnNrog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BFF1C43219
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 23:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166881425436.7485.10448836582660095666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdf7483cd23f57dafe9a5be849edf4cf1eb4a6738b3e097661976fd02e7cb518
Date: Fri, 18 Nov 2022 23:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668814254
