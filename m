Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D948E7C
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 10:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648983238;
	h=To:Subject:From:Message-Id:Date;
	bh=I5dSQyNr82PNBSEl2QoXPbSDicbWPw0IkTYMim5pWF8=;
	b=XJz+Kfy1jv/VwU89dG47e6nwAkiuipaksUQevekTCE4cdGWAaDs0o1LJCuYOYX24
	215Qcmp2lsIh0Rj/kAY1J/yE5aDCPHKsHb57j9ezhu771gRbWdWyGSvcfsFNi5jo4p6
	y84kZF96nQFdSbcZrUTf9vVAy5DUGJB6ESndnrvE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648983238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I5dSQyNr82PNBSEl2QoXPbSDicbWPw0IkTYMim5pWF8=;
	b=cH2DgGtGLRlPzwKi0ivIbw7EspqOWI55m5Ptk1Uwv6T3TE8yIbp+plzUjjOyGmPr
	zd9o4068zNCVLvCaW3ZNoGJg7YNnNSVGfZf8ZwgO/Vae4H5AN3p5Pel+MhVoU7lCq1V
	Ag5ismdEbD+0vXl7ZrdOzZ5Z5Pgdn7N8giv+AC74=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fef0f6666-bc87ef6b-f335-4ef9-a37a-1e32ed85a31e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cfe967a3dc8e43790ba0b748c978b7d668510ffdb3085e3c5a7421c77c1efa99
Date: Sun, 3 Apr 2022 10:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648983238
