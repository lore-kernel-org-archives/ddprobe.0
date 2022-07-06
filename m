Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C10B7C
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 20:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657139212;
	h=To:Subject:From:Message-Id:Date;
	bh=/u8E14YjahyRv8tQaW8e6RdT+X1gGamn7fa5Dj2DKKY=;
	b=Xiil8dN3op4cvtAXx/0Zsvdp8fUjSnVw7G/IvAWyIyP/axYuICvDttO0Lqz8InyU
	4jnKMFHmtAz32joKp2JXmAyUYuNFiD4wYw7SOrI3KO5GspVOez++d7q2UNV3jVbSFU9
	ej8nw/Wn4RIVv9flvMIJ02vx6MgNdE+rD5ZSgRVo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657139212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/u8E14YjahyRv8tQaW8e6RdT+X1gGamn7fa5Dj2DKKY=;
	b=LaJrxWlLJZLpvmy3ybtQNRiMQrsWktMDA/8o+vw+XDjCjeFyy3Rh27gUbpX6dBOA
	NCYntuZegdLBWfBDXQ/rquxlR8wVQEW79aiTMf2DMkV3G7Tp7Qvk0Wx4oh8tVTGrg2y
	atpFYQOvldjXhk66LJ2fI3SfddWRYMsDLtphe7Ns=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d531b02d-a4722738-446f-4abe-882d-5f6f9ac64c20-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0913604a260ad5c7ea00b935212d5f116c84bd7a431637dc8e1028d7271fd4f9
Date: Wed, 6 Jul 2022 20:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657139212
