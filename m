Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D93AF659
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 07:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 821C8C433F0
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 07:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673595687;
	bh=OWbXdMLyzxROOaoYV7qR2sfofR4mzWUqPiyVKhGYnX4=;
	h=To:Subject:From:Date:From;
	b=ZdUYNUcR0jvLaOftrBWot6ziqdRt3zXpfUOzbGob4L9sPuKuhd5EJdS8oQW+174C5
	 6EI9OZTSZ9LOXxfHmxkdzP+a7XzP4Lo3sVVNjvFwI3cRRJv6h/aS0m4CgOtMtKODXZ
	 20PdHvr03AyPOtMpoGSqhE98+L/4E8XqpiC93vbw9JBNX2No2CKWHs+bt7F0A9Tl6C
	 rvPxdLOx4xyaGlfvGxLR6+UfU7IiqTNXw3Iu4qeB/hi5J8lGiIyirO+E1xnMnyT6va
	 ycRAXGMRrlCY0ajjp74LRllOSOPXGiG+HhAu0lKkRZDiX+TrhhpFSMVAO9fFrK017R
	 7zRr5JL0zEGuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66DD6C54EBD
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 07:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167359568741.24054.4418400329957705725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4de0b354c90bf928af2fea1bed6abe313c7dd21b5cb561dac2d3c4fcbf10d709
Date: Fri, 13 Jan 2023 07:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673595687
