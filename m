Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66D497F
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 11:00:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB212C433EF
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 11:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682161206;
	bh=tIuadyc/AHc6L/U7JHDXfWUt7ntK5Td21xj69kOizW4=;
	h=To:Subject:From:Date:From;
	b=iekbGY4H2HIPz8UvbCgW3EixsqbtEEcE7cr+/pEDiNuZ34SatztReCKnHbdHDEnPt
	 3eYbJlEvatY3VXJJT6uaQd3GCLBCOjna7zRoRK+5mqsv/zL/oqvpfzSnZKDIn5Pf6I
	 fAdaCVV7aN4HeWqy5QJx8K8gj+Sq/uXY+JJPqki+iHRDyi1ou6UzXIXnbvKygHdfC9
	 IZOQMtWHZbd4sa5C6CS+xfI7P7eBZ+PeYep58sJR1ykKgmEbNQmVblDcVTtqpf8XgI
	 bdr+ikSJkxzoTVsmJUaV0hsxinc3po3GSPaPGTigxMhKeSspg7eJ1PTtnQ5OVqIm/a
	 ZD9uJORaUodbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFC23C7618E
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 11:00:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168216120575.1290.5845817668786929454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be8a3cdbd97c46cd7aa0a7491243b8d75f85d2160472ed3e023b4fbd3e15ac6a
Date: Sat, 22 Apr 2023 11:00:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682161205
