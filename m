Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21057ED4
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 10:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650364498;
	h=To:Subject:From:Message-Id:Date;
	bh=kVeyG5lIr4fcKukiA4gmBo/0Hef8ptAzY1EWuLlzG9g=;
	b=aJZarunlA36FZgmzcv1xfwCt9QgG6UVbgf1tMQUnZdlCkgkxnXDa3cj1AbeZYi+o
	YOOv/iJHNgnuCycced8plFkuHs9q2Hu9l201XYui0b2Vbwi2/ERAya8HVIsrAroTmkq
	2nczILy0nAy1jVFo4dH7YFcFbXobXSuAdX/hddtU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650364498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kVeyG5lIr4fcKukiA4gmBo/0Hef8ptAzY1EWuLlzG9g=;
	b=dNYs7VZbMmax9lv4cGVXfENj+htphYzvclLNX1R9pSpJd1b9GrMXw8lAQVUomuyM
	jIXUe9ARsDGq6vyTINGHKjSGeFEYE3rG8+ZW5HJHK83zGlX0rWI4Sbg/f/wpPN+KFvP
	9Z+oWXWxhODvw/25Gm0Q4ZPFkpnyQHdZA1VHEIEg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804163c17d-858f192d-1588-4c59-9d15-896d96aa5640-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bbb46946410a5f6a6498930cb4b3260a463bfa7c46f5a09ace27bde5d746d619
Date: Tue, 19 Apr 2022 10:34:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650364498
