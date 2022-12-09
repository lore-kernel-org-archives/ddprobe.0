Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCBC9816
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 07:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D8A1C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 07:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670571087;
	bh=0y+hFMkQu7eXGcWa6uUVciChhfzFEqnxdJRscMb6jV4=;
	h=To:Subject:From:Date:From;
	b=tc2aZt1PlZ0uJZLZrFBhvJLMYy1B7KbH2ZP4jPUaYOINjSS1eXIW6O1GE1WcD7eoP
	 450LUpt1QWA8vILXBDoZWQ7s4czypkbLY5pWg3tET0nvVq6KEv+qOw/g5mJLZPEOmx
	 WkOJflxAQ34SSe9R9RKA0b20PFvi0uDT1rAidfuWeZkJwE8xe5VMqDZO3NuFX5dtVj
	 mV9dGi4pzF+6fwjkqPYMbZ9IHJZ9950Sx9CYiJS7pNdfPa0J9Fm+icg3+IKEmzqGAR
	 U62W2lthhXyBDhx0SA9zqEkxg257fJgwctmV9FnXH3m+OiSrEsN+yX3rQfyMa8A5l8
	 iLLvzSYcKuczw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6058DC4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 07:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167057108738.9064.2046785753296159970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8ce31983c1a07947ac31c7523506028414953d46c10a54071d02ac64534f708
Date: Fri, 09 Dec 2022 07:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670571087
