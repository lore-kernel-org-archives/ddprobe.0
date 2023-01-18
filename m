Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3F672CAB
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 20:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 846BAC433EF
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 20:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674074487;
	bh=9BpBvl6PlFeDZXH6+H+wU9YZbPFmwcD+CTETzSVd9uM=;
	h=To:Subject:From:Date:From;
	b=aCa3coQLHjNWJVRbr3+HJH5JVbqxYYmjwEhOu1c+fD8qK6fqz68P+PgxvDd+8KpAQ
	 HmwPzehDQ0hEMJnwZE8HFgTJPKOcrp1veyvjz2rEgwAvqWE7aW8MkbpVj/+oPZf7sb
	 lEAv5cF95Vv7oz3A64FOnzQ/N6ZHCo6nJeiNPfurW4CzuUTMuvaae4mgov4bQE1vv8
	 r2YGnYpGAbNefmCtakGrTtK51PQy8vZxJrixE0baxWfjZT8nk/aRK+LSQGLxekIg6b
	 +R1pqhvK6ERf/8cs0VAwu3GkMu6TflcOrDMj8qEmKodLHlht2OeFFXT/q9xXjUDtvQ
	 N0X8/1t/AsW6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64FB8C38147
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 20:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167407448740.29021.12850337419768116035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97faee1100a94405bd31c90eededd700c591a1481844c12d6c9ac2ab2deccf31
Date: Wed, 18 Jan 2023 20:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674074487
