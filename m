Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 780A433C7
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 18:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651776178;
	h=To:Subject:From:Message-Id:Date;
	bh=lPLGZl6AVXX2xCOwzpbF1s3gXl4wuBcuFvHn6WwVWj0=;
	b=TxKupkNGbHhTJS1EQLprDaWOZ1yZ5g8og4ZLJcjM9LxpDDfSdY99BYP0SKtK4QCW
	W0Vv3ZeSLynFdHWfb6sQTJWEkP2XSHvr2DWYvPfgbfp8KAx9XjgToXvjdMmItEnlqDf
	DO8PEmGsV+IEIZ/RSdLGobZlvcA4qPdXgD86JMW4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651776178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lPLGZl6AVXX2xCOwzpbF1s3gXl4wuBcuFvHn6WwVWj0=;
	b=HqbX+inKYuMkLgL0suTACvw0xNy5Ho2sQ8cZRRc+cMC16qqLa0EcBOOXWffvWAs8
	Vfq0w7U90zThkPa42qKjmHn2u1CLFO9PkCjf5O8Ww/Hjf7C48ltNboIbU1L9xAgsawz
	90/oQG2VFzzV0oyr7nq5EIrdARevGpiEch29SHcg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809588485e-9e7cac53-06d9-40f4-b0b3-ec2bfd0c32ca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6a74869b53c9a50bdc19a87141d6473a27a46f02bd9c6193ffb8089a949b9e11
Date: Thu, 5 May 2022 18:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651776178
