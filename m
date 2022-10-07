Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC5CD5380
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 23:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79BCBC433C1
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665186053;
	bh=q4BrGYdheF/7HX2esVU0U705fOH7wtkmlJx5YXxgAqY=;
	h=To:Subject:From:Date:From;
	b=XDZdZxUVDadLNowk/05/VHvQFhJHvglbaMCEGgF4v7FW0zOz3fyrXKRlewfQTZfnr
	 nNdwfCHxl2356ZIzsUltDr1vlAY5kfElFF9fEbIPY8b90CFHAZIZO3QsI8+Pd4+eCz
	 Czg1oCI21+5uYI0mNn7ZiyBoT6OBZbuQovhZg4uEyXiKuTC6EdiW5af4hf7vc0eYSg
	 LIWrwBxwtGZ8RYwlbyZBbQGb6DIN0boVwNFF1fVJT3LMlSS9V4M5i84LALARKUfkLR
	 Fwdl9ifJ8DQgFDtNmwcSBaXBwbmNgi3IuhC0iM7iNNljc7baehdKOI0KvWDx5ObHJf
	 N9aIyYef/5HIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57EF1C433FE
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 23:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166518605333.31089.11832364290978533548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 704f23c90d420e8bb10fee3f844e60eb250a025d0906a9ae16cc85c98d4c7ebe
Date: Fri, 07 Oct 2022 23:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665186053
