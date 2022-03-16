Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3525846AB
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 03:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647400584;
	h=To:Subject:From:Message-Id:Date;
	bh=NFEO/LjGfiXFUp+ZzACO0B1kAU04eUNnFmVzxi1s170=;
	b=XDHYlJuJS8/7PUyTDbtnBx12t9fs2rhjnOn3lgmZy2wxypxFQN/91kSJn+B95P9l
	LcYFcMtzI4r4Pwhn2H9ICJ9A0iqfywCsH57GEWtUODc/vZG3lbT0BB1oZcuWJ7uryDi
	Swvcvj0v8WdVtyOV7ROqrfHqRhW5Ia5KZ5o8c2eo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647400584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NFEO/LjGfiXFUp+ZzACO0B1kAU04eUNnFmVzxi1s170=;
	b=I8vAao7osiZT3KLDY6is6y3pMfu8c0/LoBKgMwCEuUXDLQfHkK0s7Z20Pxkg/JJ4
	VCoCccVcfvCXPsAW5T8+R0mOy7FPpitePWDBGTWgNEUISt2qvD7BX59pRCwF1kp+5xu
	asPne6GsIdf0NiER6hj0HGKzgzzWKbbz0ccskhDM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f90ba05fc-5397bd20-b76d-4386-bb46-adf8f7cfb0d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc3d6a636f4d5ebd892106ab51499f20e74f873984d801accf35a9a695e743ee
Date: Wed, 16 Mar 2022 03:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647400584
