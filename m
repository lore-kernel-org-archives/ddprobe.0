Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A9A80C
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 12:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B76C433C7
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 12:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688993828;
	bh=dNq2vQeCIog+NVfl1o/KzqYX95lsH9snt3hsPTNY0KA=;
	h=To:Subject:From:Date:From;
	b=KKjPtTH3b4aDnY6LvewtfWJpD7rJ4IB8+BCEAcJVIUk1WBkYJiTGvbfky3CW+sjTk
	 3LiaMtcowxWOYAkGv/LXJbool4XadW5zcf6RFXNTxcHFTYBWUnSRAH6YQLA1xA/O2f
	 7fRsOcgEStTn3wZTzP4X3F7CD3X+dx8vYwKh5leDyvNH6soT79g/7LWGNRNt8BfGA+
	 6thPE+LxjvSngBKmIZJFRP1ZKDaqGtR8i47UO2eX63OiPvulqPwBhstMjHOERu8Drq
	 7mNU3yaDjZxvKXZt0Y8QF+BBCwBa5KDOGh/0O8JE/RhgnUyxcUzHMIBbDT3JTWSMsz
	 XUocTWdkFu/EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC67AEB64D9
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 12:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168899382874.21971.9108405248919501523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 425cf2add53c6c36424f2e4235213dbafe631795ea3900f290f716e970282780
Date: Mon, 10 Jul 2023 12:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688993828
