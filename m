Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 037DC23A0
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 19:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650570238;
	h=To:Subject:From:Message-Id:Date;
	bh=4AS8poZ5t16tNggLY1KIBd0Y1v/ozrwxam1Qz+Y7d0A=;
	b=mf3oucUtzjtrjf6Es3NwfuW9Bm35UOg0TijDasxJuADc/VGMhGYDqu56huhOKhsg
	n9HRaNFTdBRyYM7wVHb/8EXH8gRlbvkmgkHFznTSJTx1Yw5WjlYCXM4B+Pe8N/BBjUY
	dC9wif7PntxH3jWJWSNmlTJl69wNsUGaxCT9vs/s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650570238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4AS8poZ5t16tNggLY1KIBd0Y1v/ozrwxam1Qz+Y7d0A=;
	b=YMB3ST8/A2Vb9J0hdrfsddicKBrInmzlw4hL0WmY22GHQgyWbv/99cb7UFR+2crY
	42hjftQmI7gBWXUXLXqtn8ahhxeBHnFvo0Mc8cIy0VFfN9DerStJtQPkcnACYMUpH5b
	ldHUOOHSzSyNW3PCX3x6XzgAPa7ovsfnFGTYoMwc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804da7192c-f7efdd50-d8cb-459e-a4c7-42e6a317701e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cb43bb69ab47cb6f64433cf051c5e9a2b246e7acb12b19c5ac4b90aefdacaa96
Date: Thu, 21 Apr 2022 19:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650570238
