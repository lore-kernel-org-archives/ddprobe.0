Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161A61856
	for <ddprobe@lists.linux.dev>; Sat,  2 Apr 2022 14:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648909558;
	h=To:Subject:From:Message-Id:Date;
	bh=/kI6MH0JYh6xRyP3EAmLAIoymkq6RMk8VHbV4MHRNUA=;
	b=M+NFDNWUWk3eIs4ymSWyrG4DOcp1oXBUBvqWcOh2sfTrqDbO6SmGksKjiLkQ4uFE
	PUknfojrvge3B/5MYZ7QL7R1jZru5ZoGFA3xNAyg9xRmeSi1DeXqt9k+0EAyYPE7D69
	tIr7d3hbjfkRrYjOPk1alMOKyJu+3lg1GfwkfFlE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648909558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/kI6MH0JYh6xRyP3EAmLAIoymkq6RMk8VHbV4MHRNUA=;
	b=X9uEO8N8mZ4F6stXAEDJTBdcFqho7Kt+bAT32NAur4fQQrcWwspVJb1W9b23+J4e
	UPyCS0/Si6mellM+7+VTbOWNoqICP9BYgeoRk66taLL2CeIZ53MZcFBZ/UalBSFjqa4
	wGa74vzbRyevWqPUDCI94W50NbtSkwbNI3EzmawE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017feaab220a-c27560dd-b60e-44b5-a968-43f44897d17b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3692d6a3f0e12b6f92969599387c3f53044e863e2fad5fb27bf5c5dcd5e14d35
Date: Sat, 2 Apr 2022 14:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.02-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648909558
