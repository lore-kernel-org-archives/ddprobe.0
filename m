Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6743F4C7E
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 15:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647618084;
	h=To:Subject:From:Message-Id:Date;
	bh=E9WCqzobb2HpK86QcHa7wIBklBg9PWF/HTRSnD28GM0=;
	b=P3KJwBdYq975rWwVIPB5J1QcuJzCVE4BA03xltridQCciupkAOjMWHBvVpt6Nd6+
	txyhJKIres7Z9RFrsVO7SKyRY3vY6tIKc1AFNpySvSUA3OhYih/RobFoKOgn0NqmI5a
	rlgCYvKXQHicVrOs1EqjrsJ1p3zxO6B6d/YoivY8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647618084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E9WCqzobb2HpK86QcHa7wIBklBg9PWF/HTRSnD28GM0=;
	b=QjOWFTYxH3zdINtut+KNAagGNbAILgF2jp9Klxdo7PFbSnItBF/wR0RAEM6DcrFV
	Rgd+qVv3dIbjTEz818s0krYs8ED+4A2PGB2oQ0I4LO+5w4F9271Rgn/nyLO3rMMsz7U
	RmZjBDx6DWgNRXjtqXBVHDb1LABIhD+5K4+oOJlY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9db0cf7c-9485a256-358d-4d1c-9b48-051d1e51ec92-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e0307a262d726f5a9c1248693c96238761a232fb975a50218ef2581de10338e7
Date: Fri, 18 Mar 2022 15:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647618084
