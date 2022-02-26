Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8A17A
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 00:41:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645836085;
	h=To:Subject:From:Message-Id:Date;
	bh=TsFsLvDy5j2QMqQrIicef8N+6aQGPxBAnP+0XxtWLos=;
	b=Uf/0P9BGK9KfW2oBI3eH0jbza9gLmGarw10Hxv7EauWIN6fLx/3RX5dd+72yOrmX
	e637BUZfbFszeY/6bN3v7otzw4zkwlLLK0CRekFmZhPgv19fixaY0N9YiIspcZtVtHi
	I07VwVOb0PRDxLj9jIwo9riyaUEpJ0yFziuDmxGI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645836085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TsFsLvDy5j2QMqQrIicef8N+6aQGPxBAnP+0XxtWLos=;
	b=YUOjoYGHM7L5J9sHQedd3+zZug7W9DaMMEBPRcQVowUdIZePgg4miO5I0YdbkWh+
	sULQlfrWW4Kq/nWd2qkDCUk9X6mGeSJk+D3dOkN5zfgEr9BFDdRRycJLFI98qSF6JJM
	/T0T2jOddMGWk+WmGxSy6jvGPwk6HqPz0zQGrm2A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3379a5f8-01100057-6271-47b5-a650-c0e56ed215a8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d705309d4bd85c1413870588a027e38e1464e9fd80ce600b0ff041630978f16d
Date: Sat, 26 Feb 2022 00:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645836084
