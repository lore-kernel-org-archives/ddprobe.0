Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19BE83206
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 19:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653076079;
	h=To:Subject:From:Message-Id:Date;
	bh=Zzev+6v7zKxyL6v26CNLF9sDeHxsJiWa594wY82eYe0=;
	b=DIZyEZl9wN5F5A9S1wULfqinyVuQb/nAjwY2sfjXM4o8Q/PX5Tr9TnBrdeQiudwZ
	c04ghUa/n78/kzzyrXI/7jq8xoRTaLf5hHi25pXWQWIUnglkjekHfwlveCU/lObJd95
	O6mpBzV0ga1CHne9nyWmRUBDKiy00bW36uvoe6CI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653076079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Zzev+6v7zKxyL6v26CNLF9sDeHxsJiWa594wY82eYe0=;
	b=S2ddbFT+kX0+QKEx7jLx+Cihuy33lO5rR3LzpVbUPl3gfgVXfWDee+gqydnyfQq2
	NQcZtfYCJx13NoEykheI25idLicQ8UggBKFSXfpYw7Bvkx5tEtOLLGAyoItnf7cldAz
	DWSb+schj3JwHWHz/oeIxlKhBZiY+zx1jtMvUZCc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e30332c1-8d211dc1-0b94-4ebb-bf5e-2710fe8eb9fc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9a547fe1f945e7c0689b358e141312c87336aed7d1483cd6301ac729e35b099d
Date: Fri, 20 May 2022 19:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653076079
