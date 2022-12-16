Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D937B20EA
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 14:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82D96C433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 14:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671201087;
	bh=ntel2mMABW/m6TmPvM7V4RcxEnM9KtSqddf5lKRqv/I=;
	h=To:Subject:From:Date:From;
	b=Kg83WpWWxyjMkWTzt2qcVFBIvLIiIX3VHgbfiJZihU85vpHIcNNWIAPYo3O/jVUvw
	 1RB30Ral6DreSFwb5bcyjc1tw6iCFuoXj6pNMEDUOIMN6JajNiuEbKJvGr8h31+4ti
	 o3HZWirKbIkYJokoOW4ZeLWoihA2JeI4OeoLOk/wVRGqCyOC5ernYbH6kLtaUwPQgH
	 DZqB9sqeigJsTH9B+ugTOHBnxPqhWQ8ME5+tVjtulBWUrMz8zW9ky6hfrGEH/k8P4g
	 tr0oZx42Z8synaka4DRu4dmG1pVkslpvexWiG9TLbHUS/0AD8QFa+sJPcReiC9dZPj
	 hNIErE9l4ES0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63083C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 14:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167120108739.20134.9651672196876143257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f70590365a0f1c76a836d1b0b14b4dcfae00944efa7eb037d281425117a8aaa
Date: Fri, 16 Dec 2022 14:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671201087
