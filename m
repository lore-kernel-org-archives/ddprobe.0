Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50404D30A
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 03:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE123C433EF
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 03:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677294905;
	bh=wvcOt9kI2j8n6j/y76rbO+4i5bkHS/Bslf/sXsKzP48=;
	h=To:Subject:From:Date:From;
	b=c++r+1rKA8ImhIY83TNn3NN8x7CGvXUsYE8L67i+dhzx5bOln5Ktk1a5OEyPndT/u
	 4swHVfNhQ9RSCU39P3cyZISqQTqDXbuG7SvNwkPsFGxan7AQBTcctAi6jozswN1q7+
	 IK6qnNxnlNW2T3nr0POM5JX0TuFeUwINVj6HviSbqiu/BwUR7KIoI+bHZou6qtHkl7
	 PERU/buYd2qYj48IaiAofX9kci0ivAx7/mtJUGbOJK9UvsvTpHk66eaK6RtuebxiOZ
	 J2cbt7XFp+H4BwjF+15Mt/UkhOfN7X2j1gC/KVBZzPaBI/QXgB/UcVo5jWH65dWgvh
	 ip/4kK2uhxvHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDA7AC64ED8
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 03:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167729490573.581.10210774327093177378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0094aaca23e6e1e3fd7f7ab7cf4b38d96ad063e04ea3ace62930342832d9694
Date: Sat, 25 Feb 2023 03:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677294905
