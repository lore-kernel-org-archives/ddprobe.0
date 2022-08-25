Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D23C11102
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 02:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87B06C433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 02:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661395852;
	bh=s3MrfGmjRb3RgN7aRSMz3VoVAKIjFke5SQA9kotlw/8=;
	h=To:Subject:From:Date:From;
	b=bpZitf3EwOlO6jJFRmscps3/coxnwijpzi/Dlayx13wBmWwqMRAZW+MdHQ3lCV5aV
	 EZUwyEr7rBDcxfMCK0uNXVAZDtCT6aHG0Oq5FTb4n3lVqJ4qGdH6oMycEf+S0sdfCW
	 yy/7OBLpocXcU2g4Sns6grlD4HqaRz5RIteI3Lmzbx/w917JiYQNVSHBnhIz807UMo
	 QZoandrQTZuhQ4IwicPKOQ5mCf/QFkWbRN36exzPVtwtNknvWedHy6jPPs+fE/S4zn
	 AacE5j1kJVYgF7BZjjPYh+jqD+fm6FwPs+Qdj68g1xdqFo0v41/lSws/wLU3hFhK7s
	 fCpvguTAAWCOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EB72C04AA5
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 02:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166139585240.10639.5204206212389211537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03f5c489b5b7312f30e25bd1493b362034ea6297c1e6c32d3a3cc6e404fc4959
Date: Thu, 25 Aug 2022 02:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661395852
