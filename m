Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD3615A5
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 05:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652246939;
	h=To:Subject:From:Message-Id:Date;
	bh=6nrrOzuF9vHn0eEMfJUPywX+vxFyJE+2BpMMPFPWJ1c=;
	b=MmphkN+qN6mULDzJ4nn8GCE8Gzq2EoBJ/RhqqZpIEKb2+S3hAn2VEiG6WsaGe9af
	4VXSIcakg5AUQja4n7qQ+7O+NdQoKJA3inmOHsLlnHHcL+V7DOljsVfhjgL34BUpSLV
	MvmbYmE+czygr1VFrN83CKZGep1qeHke45DaUwAA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652246939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6nrrOzuF9vHn0eEMfJUPywX+vxFyJE+2BpMMPFPWJ1c=;
	b=Y6snOWa5/VlA/LvksoRlnyZ73SOR18dBXVEV6W5T8HETuvALJoSgy8ZnIgOFVe/T
	bel4TifGhjTyirE7nDcmHUv3HM9jFXn+d/E4O9xZM7G9GSx73MTmZtoA9oDTG+2+Tr7
	xNaXT5hk7EmKaPGEy8D/smpd/yXthRRTZQmEHzK4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b1978670-8ea12eb7-2b2b-4429-bdfa-7af015311468-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 78ae433078439f21a36ed2cf502117ced4085d605e63feb4f615b41c7a655126
Date: Wed, 11 May 2022 05:28:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652246939
