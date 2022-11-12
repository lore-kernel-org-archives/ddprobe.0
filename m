Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D40FDA23
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 07:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 781A4C433D6
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 07:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668236454;
	bh=q8h2+zp6KIcvnoZ2lqxPNQ62QbaUn234tpOzTBx0ggc=;
	h=To:Subject:From:Date:From;
	b=c3XEz9d0QV6jUsUWbdNAMWjlDfFmpHAhmnrDlSd1hfptKeCrzpWGNQJp3eGwVSgiA
	 r/W7ekyxqIE35EokDfG9hJz+PD49UbBADvI/XIeTra5ilxEmN1T08ZS4fXQ4Gngkvk
	 WujrIympH6pqJPDVc63mTJvKmvcn8Qt00/qB/XlHzafkdY9YZRJRHJNm78/tRpKWjN
	 byxp1VXmarPOeWmYo6JSdhtU35nwDiRNXOJPRg2g/pk+A6bWsPQPxP231pjur4bNNt
	 kSLcHTFqMs49RvIStArIUWCFk1CfhbRzRfhIpNOOUq1H54kwi8D7T+6pwgAVyTVuYR
	 oMKbKz7ClXJjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B467C433FE
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 07:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166823645434.20617.9915254714284867719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7526b6aecc9f903dff1d30d41fdeeaa5e6bcd80d795371e4418a0c7ed5ae6449
Date: Sat, 12 Nov 2022 07:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668236454
