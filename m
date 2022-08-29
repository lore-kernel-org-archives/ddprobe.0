Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFA452C9E
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 09:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 63C4AC433C1
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 09:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661766652;
	bh=dt0r0+AJupxJJNoL57Dw1hdGwOiEGPj01wqdIJqghI4=;
	h=To:Subject:From:Date:From;
	b=dxwxdylvkDFmr/botemvqneUMXKgxaiL6mjXoktGgK1sXyNRMfCC6tjGviJzM38hh
	 j+OUcYIQ5CvWv1yamWpRKwp1h8bMBdKZyRAQRzy+xjhlBoB81OFV6+nEBiBlyMaIl4
	 D2ziPguTX8Sc4xTyt+kAKPDmlRtoORxpCB8XbCb6E6dqrceSHXXq1ZYBmhsLPoixpx
	 xQyGrPB/zf+BTRr2Hf60fr1zL/XNHJ/TRuM/FmWT3rJYo2UxqXz1rnoj6jSroaLjxP
	 mtJJHXoKQh5wDCViNILQmn5EsB9HNoFAKB9AIE1s6dijhAj7thi/1zFRVrC/FPP7Dq
	 qiZMLAcgNzpGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50196ECAAD2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 09:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166176665232.9719.13840444183524974035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb5842d9186df0971cea343496e55086b77eba07c9f6de1a9506703a09783698
Date: Mon, 29 Aug 2022 09:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661766652
