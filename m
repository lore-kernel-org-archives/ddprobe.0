Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E14810780
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 23:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3351C433EF
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 23:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677801365;
	bh=tOkzuXbxSfaEpYL+FrqCdzLNA+U0xuFFFW9iwKis5h8=;
	h=To:Subject:From:Date:From;
	b=VZ4HdgmKDVh5tZ3bReWvBam1HpQ8rx38HmqXFLzOmNcdudFlnT1mftPo1JizlqgeI
	 AqqaJYkqjk7o3qP5krM7r7mbESQUjVep8UsngNTLl1GK5aavacOUxtbT2tcCGriONd
	 crzcmdEpQzBOAeC0/HBPMlTWZNOheEYSBfVvG75PCeMEUZRMEBw9wUGsIq9J3bsauN
	 F13je+TJrqKdIDlE3DR+TKxq4NvjbOWlyGi/5nSHib3AxuTtu6xMDttp2j7RrwYdsD
	 W6TlvTObuIH9Fxyte48uaQW5bgIHIQSoSh+y9rGXOvcomVqVqFG7yGLnQTq8xdUGI9
	 1/pOd7rUBXLZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB5FBC6FA8E
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 23:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167780136574.19024.1630080196742932860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d75ca02cbc8aac40fa57a8af42b83f09d115b472aaf6141e3d082f16d88de939
Date: Thu, 02 Mar 2023 23:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677801365
