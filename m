Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6847429A2
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 23:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8A52C433C8
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 23:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692572648;
	bh=ICL30JMy5RtsKhB6cDUOCVe2Y/JxZ9LNVcu/gWgIpx0=;
	h=To:Subject:From:Date:From;
	b=mAjxT/SoxGuoJFN8G9CXQ38063wRyHftyc+cy5DLsFn8SH7HJA6MC2s9qRO+Z8O7C
	 tRNtRr81FzmOCQphuOOL5NXcJlMgAfubG6OsmeXS1LqkSw2Qjd2GilhK7Gp9hoQV3H
	 ajIBEzmh9i6FMGFrQhYJQ6dZirEPi6puTeYqH1u6FvAMUb6jopbSMGD0E4oCxHVEWa
	 rU9LVXtJmep4L24fN3K56fF/816RWezOPIkfLTujoSQdPCevMQbhDkJmOvHTdT16wG
	 KX4MfLJLWKPCJEMUrbHVc0auQqQxdrRSjY9aGaOezktRjnjafJVkKLKzQb/hi9wD9s
	 povUXHlaJkTsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA27AEE49A4
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 23:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169257264868.5260.1536812124862346576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88190f6c40a7223503993774abffa6a7049b46a7b8b6ebf418d010bf7c962096
Date: Sun, 20 Aug 2023 23:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692572648
