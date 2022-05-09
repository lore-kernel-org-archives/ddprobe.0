Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0F41FA0
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 15:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652110618;
	h=To:Subject:From:Message-Id:Date;
	bh=SiIgBlgV+6sfeFeLogeYF4SLTFkkajmfAGg/zHWo6bQ=;
	b=dwyWkc3B9wjDkhm8dx7dXTnLOOhs8yo/FDUGPgGl+cZZe+SLygaHCVahbiGvzQJp
	xcXw34qh9QSRa9Mx1zY0GWXGYA7lJ2be+7SIrm/BzHHXUCZAtmjTZMBehaCkEC2iNZp
	5udp99oKekw8X2GeJ/vheHSsBSqJjBZedSeyEviE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652110618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SiIgBlgV+6sfeFeLogeYF4SLTFkkajmfAGg/zHWo6bQ=;
	b=IHpgx/h9STlhhf9kohyax8JClAX0wpKjjUmZBx35cknCfgPI8N7CEzvxnW80YbQ1
	YdQEMGpc18FXIeVoyM0eB6Qdi2HrU6vFmIrm6ZaSYp/SJFplneqwR8hiY7DdhgQgPgu
	dbtLaM7bD1pRbK0fHr6Eg4veENo0ABwWhV6qgIDg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a9776ebb-289e8872-b98e-4e22-9021-6ef6cda81571-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 295d7d1f4f485ddd7fcbd0aa9fccad045074074432062c3ed9a08af774dd17ae
Date: Mon, 9 May 2022 15:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652110618
