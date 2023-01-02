Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D756D20EC
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 06:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82F86C433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 06:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672641687;
	bh=2L/vXlPcK2ki2h4u7acflfHe7jzwoshjoifoK9VhLhY=;
	h=To:Subject:From:Date:From;
	b=KEYZS1x8X3HWq0Hb3q9xknqKR2uoGyubjCluQNPTx6hOD51EEY8uADFUdwMXoMrOW
	 oIKZ7Yjg+qxtU30PLdGewhCRdfQDnk9/eNl1I+ijRffPggJmVEtKjBM9ZEr6nt75TU
	 PPNXsJHYhYqu5c6YA1EjP6B61wYZH9ctwiY8C9ROWBZ7SG0OAGQlnLQkuznMFlhpDA
	 kyCF0UQawIEUQSx7Df1B7LxpFSNXW9MTkEz8ZXYfhJ6VXTzreX09gPa5YMRtQbFdNf
	 XhXnsZ27AAj7rM7BXoIYP3uWDkIHvCw8M4xLi6Pa93y/3RWgd8rucG24E5RwxYOkVi
	 /8xbVACfqwBjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6848CC4167B
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 06:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167264168738.16963.9369551995745634911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fd4c11dd4e12830f2b4c4701452ae862a2ad0ed42082b3199acef2a399d6501
Date: Mon, 02 Jan 2023 06:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672641687
