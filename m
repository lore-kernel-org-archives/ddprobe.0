Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12C313234
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 23:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649978578;
	h=To:Subject:From:Message-Id:Date;
	bh=dlmbiu7Jvu7HQhf/aiNb/epIc2Z4AGmwaukMsWVCzn4=;
	b=N9Phy9bLiO2d8T6koOaf/i6vxD/wSUmg2n5S92VJTYT3oqXhgoQQv/v0iRNvm7+y
	K+Ip5O1p12GbGBWIZ8BtJg43SMLZRigshHXgx9amx0DP8gGM1Q7lvYDTAZsSDO199v5
	6nSfx5ikRstFEGNUTUn4W5b9waj/qOZaG0UwyLVs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649978578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dlmbiu7Jvu7HQhf/aiNb/epIc2Z4AGmwaukMsWVCzn4=;
	b=BWNYmL+luLRTgPTprvb9M81X1Z+2Q09vSshEUzsMBWCZ1mnq0YyBU9VVfFyi0/Ic
	f92OjQTtsyUBCBeH+mKmSPe1SEuiTnoBUfz62lg5DLF2FyIEEtbywGw+m8r8chC3qa5
	dcd6PYaYUjvHswTx9OL0GnGxQLzWEBAUfRZx2DgI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802a63156f-38f8f731-0399-4b10-a82d-fbefb65b1e54-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa912b4d596e91d391b054b37edf01858bd0ec75272009090ff7264f5a5b6695
Date: Thu, 14 Apr 2022 23:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649978578
