Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C96A44C72
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 17:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F5F5C433C1
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666115453;
	bh=W1EjSEoMnvkE1V6VgLUg783GEJo/BUxKREnlYElDNMg=;
	h=To:Subject:From:Date:From;
	b=ldXDVxWmgOY3EQXrvkCAAo8g20aXVaJnNBnxdfihSQgNUCP+zKHB0CDxmwOsSbC/V
	 q+QvfhDJkLSpn5aE1rAhI1W73Kr2DmoIZAC7qSuDNBq/A21RhiDobMQ5Jd871zzw97
	 M1ZJCsHuV11OmAaMSkrFGnJGZ2IWRjzUNR97wCvc24jLOQVQ2B3NrEbl0nzIzxt+25
	 sEbXJUGs0pUPDz+OP6jyKkAs6ghGjOJbc/L2s5nuTK4Vz0Ewxbcwf6WcO5LG4SBykf
	 G7KIqP4xSdqkEoEfkwCw99Ud6LQb44KOhz11YsT5HcqLa3Gqjw7DNUV97jP8dEJBTQ
	 tM5NT9DTIH0RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68EDEC4332F
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 17:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166611545341.12237.41873364158376589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78917e2a70d4abd7bec5fdf23175721f1e5448be475ebd91e05b6605dfdd7007
Date: Tue, 18 Oct 2022 17:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666115453
