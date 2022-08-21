Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89DF57B
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661112653;
	h=To:Subject:From:Message-Id:Date;
	bh=2Bx+3FvtVCEaeqT8EGU9SUqb7NraqITCKIWShPkYvQo=;
	b=TVZGMXpLT4U53d5sqFx8tzRJv/W05pWVFeZDZjvQTaUwu2Bu7O/E+BLgqaT+/VUO
	6+e59+em3MI9LHVYm4xwmmFSZKxIoaZOr4boLCZNLXfEXx9cORLfZwCJF02pbqi3pkP
	ER08hh9rPSdAYZ9fan5FKArVQCSeDquTJqQrPf3Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661112653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2Bx+3FvtVCEaeqT8EGU9SUqb7NraqITCKIWShPkYvQo=;
	b=dlb9ZfEIMUMDhogABo/eDDI7ix1YxCG0/ojtWvyt7KpsZ38Etc+hM6XncRu47EOk
	8RXzepgEPU1Qh5l/bmyUc/d/zyOkS8Gux9cOCHiqp62HkvPBDcj3rl1O6uqtcH+xoHQ
	ckt/lem05hdCiG6F2OEXJXzVFInX84UujMWId948=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c2079309-fe3d8803-ef91-4388-b872-af0e8bba4b4c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a1e0a3ee3476e85590a0832785af351ee4918092154fb83f428b8e7eb0c3036b
Date: Sun, 21 Aug 2022 20:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661112652
