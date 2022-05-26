Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 026111113
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 08:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653552479;
	h=To:Subject:From:Message-Id:Date;
	bh=bgD42fWg9o47NODSjxpR2G3dH6mIN/mIskLv7Hr9X4k=;
	b=L+urZ+jX8Emkz1eDaQuhnq1xa34Fivfh/PZ1O0TQzx52C2BChw/6YnkxGg8EsL1k
	vNQ3A17H75FtnUx9C+pJUTauptR3XhnpLFN5abZX83dFePC2R/vvOA3hFtt3ivzNM79
	zVV6iefiZ7xSgujZzp2trF0Jyh1VJikwi58qOQ84=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653552479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bgD42fWg9o47NODSjxpR2G3dH6mIN/mIskLv7Hr9X4k=;
	b=OV9VRbGszDp2muWe+YkVUL2pzL2/RQXdG6MkfstieO8O7BPkt8Q+HwnwIx6HYx2I
	75bw7ikVlF0Ouzke1B9sitcaIHgSHuI1XA5j+44C3hp44NfkFHg4Y90uD0mm2ChGPr5
	a1MjGj6AXDsCwT7MB4Z0vUxF4BAYotw4YwB0lDOY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ff687c3a-c8737be3-b3bf-4834-aa2b-296225dd8105-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1d06fd1b85e1ed40954bb5c4a515d221f437b2c4a761e7ce47b1c6c7d6a6110b
Date: Thu, 26 May 2022 08:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653552479
