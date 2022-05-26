Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BE7510EB
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 12:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653568979;
	h=To:Subject:From:Message-Id:Date;
	bh=P0SECxBqA9c+/vP220uiR+GnADHHHh1HO+YkkHnNqHc=;
	b=cTTzCOYZmiUZD/5eDo2brCZJ5jHdb7uJwIKm7jdJ5w258nRDikXCjbQQ9cYHw4dD
	jxn+oIrgcv8RkCHnwBIhgIt52uThOmembR/70HYlw/nPrIky5HlX3xi5nxjkgmWM/Vh
	7TGMpDeqOeDflL0J5NAmw7qdSgvI0NzXN7Manvc0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653568979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P0SECxBqA9c+/vP220uiR+GnADHHHh1HO+YkkHnNqHc=;
	b=ikSAAJs0SZi05ToJw0F4RNrV3DjLafQ4SE+qpASYOLTzS2m8fuVoMW4AQ8R3h3pR
	Pcx11Ig/WS3HVCRLOSkdc+Nhgkc9q/PcQrlh1/Y2G3ot+lk3pLS42JSLbNbyG+3+xyT
	7JdDe0Lytl3rNTlXQjyPdv8vDBF4afSltEHcGrDM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018100644127-7a007060-5752-4ffe-9a4e-04bafdc593ee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2677b96c2c114119dc49766bbaadd6975a6090634ea16b0d7b66b50f6fad2da4
Date: Thu, 26 May 2022 12:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653568979
