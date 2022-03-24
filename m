Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F5C87E
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 17:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648143238;
	h=To:Subject:From:Message-Id:Date;
	bh=V2qdB2ovDS022nBUWfn6v6UylX41fXOzFs95W+i7TRk=;
	b=dL7HeDjDbMOb+HNEVILR/MzuTh7eandDiCkHvuJaGOQt5Z2DfCyI8PcPr7Pnpmmu
	fkksuJk4suOJNnYw8vKV5EjLpnhZlHj4Supuw9ySEMfVR3oDFyn7+AvRhh7acefYpka
	EmKggaY7LLQ5xXCJ159CyB6RBXouKmT6npC7ZtUw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648143238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V2qdB2ovDS022nBUWfn6v6UylX41fXOzFs95W+i7TRk=;
	b=h2ZfSH2Tx2JkF70rdx96MMgVclObZu5SGXYZnAyELj8jg4lA7y1+L1W4Am6fvlWS
	xcF4fAMXnNgqj8Wmi402olY6pA6EJko1ALJ/rIi7l/CkiYmQAkKaH/lgcb59oPOb9BC
	06gaR96cvj0V/Xc7+ZFSBr6kmdB0MBVahJ/tcOq4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbcfe051a-e1428fd2-6638-442f-909b-27866eb30949-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 949801c1144edabdfd55337d55a9cee92c3f172d4bfe5219c07cc2bb06b2b410
Date: Thu, 24 Mar 2022 17:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648143238
