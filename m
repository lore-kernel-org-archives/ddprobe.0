Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C453E7C
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 01:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D9FFC433D7
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 01:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661823652;
	bh=B1F7RqdRLXVYMw2PlaO1hcsg7O0mDv2HHzY5jAaOBkY=;
	h=To:Subject:From:Date:From;
	b=Bf72m5ypnXp3bMDTsipWxopGELkkfvyzfJxe5reZ95fL/HzLoUhiL/CmPRH6cGunx
	 7gJg31MdTZ1NDd/fLPlLcQD0HHHBbZBUGcudGde6bNCDtNCSRk7Mdi2nKWDnNvCJJ2
	 I1amfTGBTJFubxYsmoae6I+fq8z9ovlmmX/XpVg3U9UGFPR4JW6Vguhjtu1nYrTFC7
	 JWVHkSd6FDX3audXXFEmqnfUGrIoYaWveHm4p0zPYvMj2KevTcYORAZCyP/zcUVIC8
	 xizEgTMIsSCXr77FsVOudTphfIulA5h5tVCQ4LPuhcy7Mbmq8mpmfP4dBZts7LKXGn
	 mpEwvC4Rv/6xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52F2DECAAD2
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 01:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166182365233.7677.8021350990020321312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 882ecf8663df172fd5beaa3f3eb9b7da2986318844adcc423afe0d3b052de4d0
Date: Tue, 30 Aug 2022 01:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661823652
