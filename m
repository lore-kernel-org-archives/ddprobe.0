Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DD6A15A8
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 00:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649120038;
	h=To:Subject:From:Message-Id:Date;
	bh=fFJ3uGEAh0fjWVee1HNPSZQRFEioqBVEwLR/fpehifY=;
	b=NWd1//atxmKKczoAUvZ2SngXJEfqcIEfPruiCC2kQE4bJ+oTfZz81tUEU5Sbw6v3
	3s8ps/nbaOromojcMB9Y/Ge3SuMbkeq5Ni2nyPz7vAQozoArucqf4hZRI+6QUaR1JbN
	oculEimSwLg7OOowAeqOg1MolkGupZiL6erTZ6Ec=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649120038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fFJ3uGEAh0fjWVee1HNPSZQRFEioqBVEwLR/fpehifY=;
	b=gO5xLSt2UxOuwj/sf7zByv8ZysXrZ6GrxMnIh8NLCLAamM7oKy/ZT4lDlEGxEEIR
	2DzwznBtj22uHVpIBfAy2o5WV+TUsVk8vfCbCPf0uGopB+MjH0WovBFDwOiU3X3jpW/
	E86WHJd37DdjcNmZLHbIycpCLUdT4neXGN9ZJ2lU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff736cd81-37582ec5-62a8-440d-a31e-b3093c6c4c37-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 97373245b180c2e8aac59dbf16b337ab1ed99e01697b83e6eeb0e884ae24c773
Date: Tue, 5 Apr 2022 00:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649120038
