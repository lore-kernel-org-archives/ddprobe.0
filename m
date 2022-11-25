Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC41B15B5
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 00:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66B39C433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 00:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669336254;
	bh=czaA5OCqwL/mxUAi7xBxsYnsaJjsTVr7U6sTidxOjfQ=;
	h=To:Subject:From:Date:From;
	b=Q40XIYJw4s4NDNgbrvuX7ESu/Fof9dgJxcHB0eHs0urnQTuBlQFFL3wqR+srREH1g
	 Ch25rOjbVnN3yUvkGa50jNUGgrNha35+nDOlK0RxskQXlnmO2+9fnx88G6bU+lIX+s
	 zNMa3DCm7SEusMmzJM5FexCIcdIBMVo5c2san2k5Cgv6PC0kU03TC0ZXOBnQlCUnz+
	 +fsuIq4MVdIYRd7mH3sPEtHQwJtgQon/NbPToRq0yMqHDhH8DpuUNA/ycBrrZLA6oH
	 7p4Oll1OjoVQuGVDuE5cf2zfXYKpKoTQl+usB8AKQTHSX6jYPiQvOzRfAgjsmQmB2f
	 TV4sF4WowdkJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FC82C433FE
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 00:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166933625431.32648.18253001683980603654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08498788d271df612815bbe67836179ea27962aa099ee7aacf09f97e02639e62
Date: Fri, 25 Nov 2022 00:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669336254
