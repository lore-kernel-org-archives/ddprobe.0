Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393FD8F6A
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 21:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F0DC433EF
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 21:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674596585;
	bh=5Oc7D8hRDezjRmHWmRcj6XgocsAfZeTnVX0Epuc/SFo=;
	h=To:Subject:From:Date:From;
	b=qvmhFQyDxGMhUyh8/yyVthcjbWVosxogVP0sn67hL+aQz+b720OT0KTRgCjpr3Nxx
	 7RbG6McMEj4yW/l2FzF1/sXaQr/6kxpQu6iyn6sdsZEIIqb4coxUfT+Jpnh44iOFUe
	 weDbrZAP9lIP6kNlGyIaLu/4NuuPH2sftTElg24YuTDA3dSt96CtpvMqRtd0A6CMtd
	 CfqGXuU9Ow1yuL6/RqF4zDaz1PQ5yofhwR1K9g/+rfdw8zPBXzhWqsk9GmsyfL1bUv
	 3PF/izV09ytwnma1O9Kikx6eYkQeDVMKZHdrZhi1rGY7a6NQhPHMsKN0KREC3H6jCJ
	 YJZGj0vk23OAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8750C54EED
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 21:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167459658574.29211.6974780285182511599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aa22e71ca7129ae93e977e215a7e3243fb3882e8994bcde480bc2b07ea0c984
Date: Tue, 24 Jan 2023 21:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674596585
