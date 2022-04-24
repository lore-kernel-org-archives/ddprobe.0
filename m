Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E99267C
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 12:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650802378;
	h=To:Subject:From:Message-Id:Date;
	bh=+XZyRg82oBDI9bj7WZ9XgI9hDZiy2mGxqeayLCABFK0=;
	b=PkAI71PpaLAc5v8hjRVwpEYvcS7ZsnijwC4KLovaK9XEmKlYvqk7PJ0agYch3y8+
	2zTcFh/jbrmVqt/GsHamgnB4wQq3dJO3GLSvamWleRT2IHtsCCQHximPHEdkCOHsJee
	dpf/CrxOcUsDH+o+0IASbHpXmfpBGx7HgcNpm15Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650802378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+XZyRg82oBDI9bj7WZ9XgI9hDZiy2mGxqeayLCABFK0=;
	b=O/v1RDGCI+BRigVz/eLkDndoneN/F0Dw7X+fLiW6Ch9eoAZExlFidc8+6Xm38qjD
	bPcpfMD+VgOvyuF9k1EY1LLgpqXR16WXHZ7Oo3pqoK0U4UC+8Xw0NfAwRRnsNX6LfMs
	/B5zlEgrb4HwxcOb/LlbRgaSb5dpffe+ePd9kFIw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805b7d4638-58e9df1b-c586-42be-a7ae-b92654f0dd0f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ba16077113cb0c3e90818cc5a05c6bf3d88175fa8dc79e1ed16e5b58be67a5e6
Date: Sun, 24 Apr 2022 12:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650802378
