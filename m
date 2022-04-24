Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D94E47A
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 00:56:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650761818;
	h=To:Subject:From:Message-Id:Date;
	bh=qv5FJ+M5IoaXEP3XUMRxPYVn6+jAUPcF7c8mNFkNhRk=;
	b=CExSMLvIE4822gEJZnIPP4RODWverEsatly/OLs+YpbU/40WvLAZ897y5+hx9n35
	OocZMOkFqIJ/O318u7OXaPDLxUs3af0Ar5P+dcXXzJbTQB/AuO6L3gSk6O55WD2kvrm
	GCuvkC58e/52k1dRCD1x83LtWtWFWBFOLEGyMOmE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650761818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qv5FJ+M5IoaXEP3XUMRxPYVn6+jAUPcF7c8mNFkNhRk=;
	b=SuMZFNRjmCQ4UnpItQF2ZVj+DwJnSATs7oE58l9EUyMmlPEY038nnCfqjPaBL+Tf
	oNkSuSCVZF5QWiS1z/mXroe6zNjcBmezDxw/g/bOSNJxx/31p3GVNYYMub6IASlJF6d
	iYMJK0yrlryx3dAFqbEIIL+hFr0p2U1nZ++qsa1M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805912609a-00837c5d-0917-4eac-bc08-009071882a3e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 45ddce9a21c8b73fb124914eed941ba51baf6c8443873694265846ef0152b3b0
Date: Sun, 24 Apr 2022 00:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650761818
