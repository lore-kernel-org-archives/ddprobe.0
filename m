Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F298028E6
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 11:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650628558;
	h=To:Subject:From:Message-Id:Date;
	bh=Tzshl5kghpJ7uK93wKrKi7wMquSW5ciOOVW95cy/ZWg=;
	b=ISrEpScsRR85S2B92USMoDm2as89Xxx8AIOV1nRIgBfKLK8zEWKslayZA/s/x74r
	kcYWINfIS9ZwFy4JqGwxISX5LjUo5h93e9ZkT36bGC08Jn3pXpoUxEPG0+tuFKZvlq/
	Nk9tgsAfYWjVVTC/NaKsMy8x1xJ7THYhf5mXwX1o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650628558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Tzshl5kghpJ7uK93wKrKi7wMquSW5ciOOVW95cy/ZWg=;
	b=MG/IYWvduA/ig0dUeIphBo2dK+yvbEAe3oFqg2XVQEMfOCc8ODDZ6LGNO2Zl0whT
	XWIwPZ0uG82RAyrt8DXAD7Pjl8v9zAJXV5CbPXyVbLSMD5xeoLEhj6Dpnb54faoZqXh
	YWOrKeIlsu7V/5ZJ14JhcMyz19ZPyX7npj4OuwkY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805120fdaa-ac539091-666c-4862-b820-895a441b8047-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5dcd0623a1f8038ade000776ca9f4d3f2591a4ffc9551f35477af58c40b26b46
Date: Fri, 22 Apr 2022 11:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650628558
