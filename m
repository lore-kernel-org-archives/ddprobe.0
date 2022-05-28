Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596B823AB
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 06:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653718079;
	h=To:Subject:From:Message-Id:Date;
	bh=WWTJXvj2kYidviV+p5JOTQcC801B+YkKGKblNolACsY=;
	b=a+OSqR/fkIYShGDIyvpsexoApCGmFY9NNIcAF286AfmB4sPDEKdNqSq0fo5t4DLH
	V5doU2rBB2FUQjUh186w69McbbstHbuLU2Ine/Xn8wuCvRPzeiEP8oda8KpNP5oKIkt
	8qum9uPrvUuR1hM/7Ak7TXUBnDJFuqmydcx51t4s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653718079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WWTJXvj2kYidviV+p5JOTQcC801B+YkKGKblNolACsY=;
	b=FVeP38/+G2IHVit3XYxR+SsdH4KJQAOXUEPxykwY9ARcw7iMy5x2y2hWW+mbBDVo
	3fh89JyLwYVZ0pzY1eBwng0c+n7RWGgyGJr0BH4nH1Gz+DoHurTHlXP3bn/8PuuzZOr
	ZAMv/NFoIMv2t2RdO9CspWaIuwVNn3fjRUMOVYtE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018109475739-40e7cd0a-0a81-4a57-9404-a0826e91c379-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 480ffa4b304efd81cb38aafb8316235603e978b61f13cecc6317fa9033b444cd
Date: Sat, 28 May 2022 06:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653718079
