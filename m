Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE5487B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 07:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655624939;
	h=To:Subject:From:Message-Id:Date;
	bh=gyLBamjklBil0iEq96x7b8udDRLQ6L3W0y4GOwgkcUc=;
	b=VV/MGLhbsT5mCLqhHWlIPjvMvtM5t5/RynOp+9fYTmk39Q0N/p/2EQvdBwLzf8O0
	aAv/RyUhjBrLGkjdDSjXs9PX23r7XiPUy75HzUXzmx+7Btngewlxn35fWHKC1new8mY
	MGdWnNBXacZZL5/HfjfWrNHxdT6HoRICS1+UJAfo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655624939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gyLBamjklBil0iEq96x7b8udDRLQ6L3W0y4GOwgkcUc=;
	b=RCjg+D1n02dHlIHW46pJk9AR0YseHotsRJcjfsJNAw3RnOD8qbONOnuWIwe6iYtq
	S4H88F+Lvbd54POcqE+JpbdR/R1878ZUQ4Xs9Gw6FAKOza7kIoT9yvgRUSd4wo/cgTX
	sLkN/0xYImR2Dh3aHRqKbPkiKx96zZ0v+Hyp4ZJI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817aefb6db-50ea2894-89cb-4cb3-bab1-9c016b45250b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 766066e6416ee8e420ea635c99f3eac37a3bb0b0e192dd5810dea1fc5a459393
Date: Sun, 19 Jun 2022 07:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655624939
