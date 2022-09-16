Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF59317F1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 02:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FDEFC433C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663294853;
	bh=KhqsBDzdWptnoMnvkt24VjFAaPmNWRySSl5LsHeaFH0=;
	h=To:Subject:From:Date:From;
	b=FtRe2n6DkURaILMTSXvzRL1NRpfVwv+bV9VCQytlz5DHH2wkiQne6NhkeZ0jup9ni
	 GY0sB19bU3JxLjEnzvz6iufCrV8asveXVAkMAq8HHkvTb2yyiuWvGnFlxrMc5pSBau
	 8qV39pJUo6t1s4sFv4hVkoB6O3XE4g+Sq43tNJK8/WvklHD10OiXfDCW1EtIuNRXNO
	 WMNRl9SoCfLPNIm0hoAbe2qUwpRx1Bo8qdncc5pFA1X8uLMSmU8/R5dwoDYmX2zfWR
	 2b/xehZNYfmTfvTuj6XYZ9dkRtcdNX4N2d+l6AhpwLHxNwess522vNWJTop5Kr5Nqx
	 jK0Uew8tz0GLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61745C32771
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 02:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166329485338.7289.15959399030015543121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 652193f5ee9a6ea74ccb07280d671280e1aaa8ac945f599cb2ac529f786a0c7f
Date: Fri, 16 Sep 2022 02:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663294853
