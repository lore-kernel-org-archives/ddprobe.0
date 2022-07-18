Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A04FA28
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 02:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658110612;
	h=To:Subject:From:Message-Id:Date;
	bh=OztaJaOQVUERCQMx/Sn0mJ1EMHocCGUsqx3cdBn+n8E=;
	b=QXwIjdZ2RwBNJXZ0vMFnrv5zyZGnJXIiJbQDPJ9v3YT9wtnef1QNIFAh+jBWgrZL
	5H1+kNKzRJbHSZiiUEiiQO+QYKZbj99xkcVSZd69l4YkJ3m82m+wxmELz5ZZwqlI2rT
	7U53VCkoAiPT90U8GaH3XhH89/On/sCKMZqv7nxY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658110612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OztaJaOQVUERCQMx/Sn0mJ1EMHocCGUsqx3cdBn+n8E=;
	b=dX1HnFvnUG9woRVhoplt/u1ZEoDRgVsG+QyLmZeiim6THzOSiHr2kN3bTpZITg7u
	4WReIzZ2O6V08ZPT1AIOA0OcNciIOJj92BREhaVQ7/NFkNJxho6TFlf7W90K4pX2PIl
	ZIw2W4lKKmao27UGZ8eyvZ9CEwaHTfwgLsvmWX8M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820f181350-9e741e25-6d72-4fb9-af98-d6f5e33dd5dc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bafb4728dd7d0cb51d80988be2dc9f3f1f985cbe59bbecc1415fa9a879b9a44f
Date: Mon, 18 Jul 2022 02:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658110612
