Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24413627
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 02:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657247212;
	h=To:Subject:From:Message-Id:Date;
	bh=uIxueJ/I5L8/PQRK2pmP0HQMlc0wm5QtLjYTDa+4IwY=;
	b=A+ShTYP2SClglGq+nXBxbqQFupbTiGqDLLQrub3kkpuYZn9UXPPHCRxqW/qBqw0J
	EdS4qZRY0Tp2RhYLgaTOTRRKqMNrRcKvx4V9h7X0yDqbBcwsF8uCwg5e4/9Fy4VnYEt
	PP9vOwEusMLAV1/aZRAK2zWxucvhsdz6cMFf/do0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657247212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uIxueJ/I5L8/PQRK2pmP0HQMlc0wm5QtLjYTDa+4IwY=;
	b=KtRBtSqwwqrbcvXaRb6HZl7Gi1Ophuvu74+g8VFgu1XQmsRpYQetc3cPTiqt3iP8
	+1AdGMfu+L4z/7ORUB1AhGO8FcCOsP2HVGZgljAytUPJJRGvZTgPTEPLg2RREVuI8VZ
	zUoL0Hzajsawa3T8hUqFbB83F4TNkOg3/EgPbjC4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dba1a32a-ad337e08-92f5-45f9-8ca2-9c5216bc4a62-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 770b69275306d73484395b3f7b216ad4e5309c6779d10f65960dffcf49210a88
Date: Fri, 8 Jul 2022 02:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657247212
