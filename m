Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F31891840
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 03:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654400699;
	h=To:Subject:From:Message-Id:Date;
	bh=QHvgoHdseovOWWr/MTOCmU0S2E65bve73j5RNHBJhwg=;
	b=egg5nwmkYDQf2JSJBrDoCUM/IJPG0oirMVHxUijav9cwLtVUjTvvhN7Bf2cNdfbQ
	lvKVD9zB7YnmMjBOQ+nA1VDDqZOHy4mIOrmrM5uNyQJjGGAsyQem3ivDY1gm+SKRHjh
	530EBTZRKsUI1Wm92oaCugVykIOdD3PyCsBwSmOE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654400699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QHvgoHdseovOWWr/MTOCmU0S2E65bve73j5RNHBJhwg=;
	b=b116oYw/5+h2UuZ9QFOpqNvaSovpIHJgucfJcirDGIAP5N1JJ3q26hsJdCyp3Ow4
	w54VhpAy97P3//894tkWXXnJbsbS0FFj4F8k2whqf6rSz6bGdVYFVOMuF8po1D0ic3C
	sZmczKDJkCIqg9+uBIh5sMRGrJ/V1IXl0fWbxAaI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018131f74b7a-c01719f2-f91f-4835-9a91-987494379a03-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c1b7bb1816006f8088b7c53ea924b9190767fb26e89614f9e4bcc97d25164042
Date: Sun, 5 Jun 2022 03:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654400699
