Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFB37A28
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 08:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654245899;
	h=To:Subject:From:Message-Id:Date;
	bh=SSjEb6zTjtIa8UEa3XyOReaLKVkJ/gSvv188+vAsuwE=;
	b=ia/3kje5yEkFgoQKwLaz2ZpF2CW62RL+LDlym4SGFV4eTdWkT3e0uffH5Tohk5lZ
	lMeWDIKE+v6VocC+OxH57Ci3svKzZzvh9lr7+gnyuH7dfAc3nffCLVhitpfIgA8J61T
	Q5+3qoUIRYmxc8KsbovPQOZEshwoygJauGCFaOl8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654245899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SSjEb6zTjtIa8UEa3XyOReaLKVkJ/gSvv188+vAsuwE=;
	b=O9YYeGmWkvoB7UZ6Rw73xoJb4lyWMOZfxIjWbDG+8Lch5/2Cb2ichpHiIBO/qCcS
	4nE5Gn3iz+3wR0sPyMQlgZF98yW2vvdNRbHOrnP7sRv9lX/NJedjh0VRH9weZa+RorW
	hdxENjX8on22rvNWnuCjMOC//bE6410bnvCQfYxU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018128bd3bef-c4326561-4bb9-44bf-9179-34b14af927fb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 23ff64fe928759ace6fbbcc59e58e1fd3f9aeb97fe016bb60ddd1adb5567868f
Date: Fri, 3 Jun 2022 08:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654245899
