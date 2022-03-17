Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E84E23228
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 22:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647556285;
	h=To:Subject:From:Message-Id:Date;
	bh=81jXvlYavLwK9aIdFw4JjFRANKhTBRvfSXMVyQC8x5Y=;
	b=CJufn3BUb3XAoUAsnb3Yy8DMuE01hU1Jae4aIR1NZbBL6Ii0g3pbqXuOvMn0qeid
	nkgBMYMqJ4SAXZGemt7F9Xz+tio1Az4ZjGCt/d6BkyT2FtAdCmUQglxP+Uw9LwKnmmu
	pJ1NSSzv358boM3lF2u/nTYayq+0W6GmyBVFApcY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647556285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=81jXvlYavLwK9aIdFw4JjFRANKhTBRvfSXMVyQC8x5Y=;
	b=gM0um2HEwPMgBNac/QGY8uyc9jOMyHd3E62ZQOMmv8A8JrDj7VcvJMgduMrOD6Li
	I/k7LOTuIH60Ig+wmdsDbRkufODI8s9bqME6LI/b8qDafmn7auqZekQ0xnToKT3AiQN
	9ce/FrYzHyN+yCDyWuhAFddE7GMb2LL3B0HuVvSI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9a01d151-9e6857ff-ee6a-40d6-8ef9-98f03504adc8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8ab23e8f2d06a33ae532aa5b415eee9d65b6c5b9d4561a342d9cd9022807b6c4
Date: Thu, 17 Mar 2022 22:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647556284
