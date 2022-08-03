Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 560BB137D
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659541252;
	h=To:Subject:From:Message-Id:Date;
	bh=y78obVy7APtzI+cbWxk+8R8NnVdbCkD1f5qxCtfAmco=;
	b=P4m4WmXQfTWr3wpWYSOLfEizAExIf+k48q3+um4CLFdjJkMtl0pfJkQwKdy17L+l
	e5wlJaGrh1JKs62lQTHhZyzpfgUuGhZ1sPYckeW7tX7etUn3H5frVpQ7qWmzbMTq3OU
	B05S5jHOQevM7EMmUE2QKgp0kNtp9RTG/1J5b0ew=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659541252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y78obVy7APtzI+cbWxk+8R8NnVdbCkD1f5qxCtfAmco=;
	b=Dug2GT5aUesFuKiyyerq1Z/n6jLzBGCeb6ir0seKFwi9sNLgFu1Z2zXTpK6vsxtj
	uhSf6r5H9RyhGHthIiXiBmfBZzBSRKs0GI8M1mVRE3TRiVhFUoCH4CwY7osyW/Y1J0j
	KK3gVtcWXPFehoJY55ox0eW1kUSVLtiNoyVkT7Tg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182645de9e9-cac9d389-d69f-47b3-84db-bb76fdc1320b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 074da52ae13ffcf37debfb9bc58f1717e83de150b9963e560092a83b39f1f4b6
Date: Wed, 3 Aug 2022 15:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659541252
