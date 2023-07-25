Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EAC98BE1
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 22:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1987C433C8
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 22:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690325528;
	bh=zziijFQae1YJfp4W6FfnE6OhwCShzZQSjoNdvomwTzs=;
	h=To:Subject:From:Date:From;
	b=YnDx2wazZbifvTKEAZfe6dc497APrdvDY+fXOc4p9yT4mJ+u6C4qWG1PdJPYOutPF
	 chNnc4ITY6/IN0bZ8u9w7hnfbObkHsItJZ0a0W/U1dVnHHJ1/BuHuro/qa8NrdoQmA
	 Gq2FiIGtrFERoQv2lvHiLHc3RR5JdB7TXw4sCCHmp3Xxc64E5+J5ddh4OUT8vOCs9I
	 2LcDo6gbhpOaUvZAtVO5YZis3xhvpF31YQ3TCUlBF+afsZ+y0nIa3POidckttN9WFv
	 7Lwohnw3H+AsWracgpTBCrmmrGrCNymSg8p8AL/7IlABkTyJDz6g6+EjyoPMaj7Ibq
	 4Rm1+mgXSsApg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA4C8C0015E
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 22:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169032552872.23539.10938573487571492939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 991c5f3cc647da972417837fd91e530d7df89401824207bd7f7c96ff5ff5334e
Date: Tue, 25 Jul 2023 22:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690325528
