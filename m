Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B51792F3D
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 14:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70C37C433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 14:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670508654;
	bh=7+/o4ikYau10jaxYzpnlE4ieHqe5crSswyNvPBRPllM=;
	h=To:Subject:From:Date:From;
	b=oIYdjSAsCoxLDJwDFuZoz95apTMRdKw9/lpIAHVbwb2l5fGa4Lgq2jvShT34jr3ZD
	 BcHIus5ybKOQyf4G3ogSp5APGBH8V7GWzK76fb8wTDUDwURyxcVzxCyjYhcBo2OtX8
	 VlO5vJcrW/KeL9b7eD4LKJIoAX7BXe33xCG/+hODRQMazR4MZ9BV277VLajPlV0Au/
	 dqeL4UasJCz1d/eJKHmqfqhaFqVXAN8fhSaxrZZVWQpj0i3PcF7T+kse7YUkUbK6FT
	 DbvzeBAxc14Ut62DWffOViCnFPTTsrUbdM36zz0StHteNbXU3UHiL6fIamuJms2Rb4
	 OKgFfDz0OyovQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55785C3A5A7
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 14:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167050865434.7920.17905427857902192241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9ada82e48e7cb3a5ad98dee84a00756a4b0b6698af50dbef4abc706a7632529
Date: Thu, 08 Dec 2022 14:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670508654
