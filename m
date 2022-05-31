Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9E213D63
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 20:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654027619;
	h=To:Subject:From:Message-Id:Date;
	bh=zdeJoYH0Sra3yUlTgWPEY4/11woBozCz+lddIWF7ns4=;
	b=gMmhKp8IzYV7hOxlBPMA2fy0Th7Nh9L/+CS7iwwh3F/ko5FxASTf7aHa8Fiqp0CR
	ATyaa4w9e0T7/FKqjp7KCSeP8jad/A/IrBJ8N8WboQjpxfrluQjQOCBLX5NI/pOLCQZ
	f1+vpqMEJbbz1rsRfNRtTHsFCmfO+JxdU/W/mg84=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654027619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zdeJoYH0Sra3yUlTgWPEY4/11woBozCz+lddIWF7ns4=;
	b=fixYS+K+Y//xD8hT1XouvtCVN8Ee664N4GEqY35hGWf0JSlRPBrVfINYRvLsZGkR
	jNy7pNUMpKNnOL99kTGPxnmsAgOVuVW0ADo7wu+jFfaMKOmHsTzHvroNwpKYrS0eUMV
	Fe3kKf0taWCKla0WsZKTP8IraYY4Nful7E7d1OZs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811bba8bca-9ceef794-403e-474c-9d57-8bf6f53049dc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2c3e82f8c11789ffeeedb12775de7bf2a6c0271f47756cf05714a0c9e13959f8
Date: Tue, 31 May 2022 20:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654027619
