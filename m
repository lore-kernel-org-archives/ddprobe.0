Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95E7D1866
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 12:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648039885;
	h=To:Subject:From:Message-Id:Date;
	bh=gdQwteOQJ47uXoGM4RmAebPACTOgsQ0oZ+jg4s1n5kc=;
	b=YSEm1evLt47bqL0k2/JrWOgf/49e5k8Q9KUPfXo08EzAArCMRx3mEI7K/5URhmza
	NlPt3Co7cd4/CuJtHIzkIb9li1DSEb+5GDXYLhjEKBAYUZhZz4PDyc6qO0N22lJEj6L
	j0l/oDvl8FSylQ5jatzHeqGMTIMRoo551wRmplEk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648039885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gdQwteOQJ47uXoGM4RmAebPACTOgsQ0oZ+jg4s1n5kc=;
	b=X6BVgb4ITpC7rO8T0LvoAwZGzhV/wsX516L/p7EWsBiQr/Bn2OaCwo3pG5C+VZLE
	Gq7XSNqxpbCzMw9Ty9DnCooPIw6OMONHxU51WLnI4uM44MUz3rODE9RpRzbesw5LePD
	sWmVj1mGqI2NJvlP7c89tWaXmy+M+OmSB8yQsjgQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb6d4f7db-ee123dd8-3666-430f-b4a3-8d60be51e2f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bcc7b6886f9a8490b9d87ab1834fc839b63e5c96f46c79408949f906ca33a5a4
Date: Wed, 23 Mar 2022 12:51:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648039884
