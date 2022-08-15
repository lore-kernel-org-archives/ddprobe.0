Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB061872
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 13:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660569052;
	h=To:Subject:From:Message-Id:Date;
	bh=WmZosFeupq78amuY8FzZoKLgX5aCX7t8AgcVFkqhOqk=;
	b=bCbPDMAcpeXO3gqOPAGr726KuwGnVS4fOd1LfA3GA0PWK09ZWj+Cwx1+xd5uMjPe
	Iay2qEmrxwBqqzmEa42YFiwKU9v0EMW8q3WMOskij1QTyxr61LlC9BKd4s9ye+BFgwQ
	ERfUZdAsFyN6mDW9/s5M0ZyMP1Xx2DeM5NKNVA7Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660569052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WmZosFeupq78amuY8FzZoKLgX5aCX7t8AgcVFkqhOqk=;
	b=V+3pPTXP+s30/jIlHzI/dw0bg9rclHdvdc6Qr4Yg7Hr3pr07YQSVBpM2ENwQFoC+
	cX2nfQobDOIsgPDpyuumV02Cy9F1xuWxrtchg1smutjc0sNR8mPXNJ1J9kucW8x03k8
	COmxLU9jcZ2iCG2tp0oZHPoM7F+CqITo7MTUNf4g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a1a0e570-d71f5fe7-95d5-4215-8d85-a36ff193366d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5fce5cc9738de720d52540a02836e541c97633af142b36a1bcce15b82bb8b60d
Date: Mon, 15 Aug 2022 13:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660569052
