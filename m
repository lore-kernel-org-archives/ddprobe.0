Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 752924683
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 06:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647412285;
	h=To:Subject:From:Message-Id:Date;
	bh=XDsxtNf5Reh29pOdKTfGlG14fmIAJQ+xm3JHhAmj8L0=;
	b=hVPljujKdSQCVaK9mADo84Y7YW8OUxKbL0MKMI+ZopeEN+VAJ8TMFReY9ojHq+cf
	5TGIPuKWOQ4lD/9ceO1OPDjmedr7l6CK16IvfFSJHjWMLdZBuo71Ajd86DePAdH4oY1
	7THx4rxnJvtlHF2ZfaLVvJsr2V3peIPclnY74Jd4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647412285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XDsxtNf5Reh29pOdKTfGlG14fmIAJQ+xm3JHhAmj8L0=;
	b=fQcnQkzYmycZ7wpX4dlV5J5m332XXQh/UsGRAyHH0x8MdrULqB0y2BzWGrqhj+U1
	oVUYg7HUmK4xA2itnm6HMsGTFxtu8Gr3FLQPr72Wv1Jr/8hnUdiwSATrCmpyV3KA3NL
	kkTL7gcpTu2gyBpySlHqYiBFJmnGZ0tEFGunD65I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f916c8d58-061ffb64-987e-43cb-af5c-1f4075661b28-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b7cf4e74e0d42f050979c3a691de71e53d01ac3de37cc4239af5d463bd1abb5
Date: Wed, 16 Mar 2022 06:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647412284
