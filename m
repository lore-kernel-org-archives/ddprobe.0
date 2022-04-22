Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19AAD2901
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 14:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650639058;
	h=To:Subject:From:Message-Id:Date;
	bh=4/ExbiIEjBa2Nv0atjVgboojYBV/CB/fIlq6FD8cf5c=;
	b=T4ycyxLdKot54G/VX+Tkaz/St+8eXDZHoSGTCL7yqls2lPHuXLgqjDZwSq8yoMod
	krDUid/Dfxj6QYY7LGFCwdW43FxClyg0hlZJ+W/yJjaizdY0xuhWka0NZI4qWbRe2l3
	r/JOZHMk+KCYJ1tf4ujtBNqjjjRpN2Mw3SlamTcw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650639058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4/ExbiIEjBa2Nv0atjVgboojYBV/CB/fIlq6FD8cf5c=;
	b=WnXWKhv9Llafrpr8zGldEpNy6gvM6DfKJApj2sTsbV87h6c9HRI7+u7F6pWhBKel
	JjmGpZa+C27Ybh4J21/3t5plEoGZzqi6y8We/5yi21Fakp6HoZFoCK3MWNvuDA4plOb
	1MO+qkt5TnXyzJ8/CxgZ4B/o4fcZ8U0ATBnAtZ84=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018051c13579-c78fb6d8-9e8c-482a-bdb3-68a62a1a4fb0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 81bc0a487ff89e43394ac023e446f5c1d0ebbd567555cdb10dd3aff90577ed2f
Date: Fri, 22 Apr 2022 14:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650639058
