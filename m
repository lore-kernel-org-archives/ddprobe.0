Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 935CC2F29
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 23:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651533958;
	h=To:Subject:From:Message-Id:Date;
	bh=mZwG45PMVzzQ4ydwlIs5w/2QZizGSbgLVGI8upRqhGc=;
	b=db2Qnjj60UYbgo1U1n5C1qaW0XqETvgNXvO8srEiN40MqcNtIpDonDFYQKulgtHl
	w0e/OW0ifqsbio5F2hkPSDXrxeLlkBAJe6slUxN5eC2cXjuQtXvlpVmBFSsvoUZ3SiA
	leoWYwKHesafRK9KEPNG40SiQNuhzdvD7oVbOBNo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651533958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mZwG45PMVzzQ4ydwlIs5w/2QZizGSbgLVGI8upRqhGc=;
	b=DxVxw8SO7HqDYsHuz3d2ZuKMF7julEe2GndpFm28qS4ZSedYX9zlcQQlwN7FoBlJ
	n0H0dAtDwca6SfZ7gptanhKykYKdCNN3Uy94BTeWF4PJ9T0bTSBwi8yy8RqyHzCpC72
	g6G6wi1SlwktyxqbCnPDK2Uh0G0J1JvCYHYge1DU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018087184caa-e0cc1f05-0d4e-40a3-ad24-387bb82bfb57-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a4f63244dec77cf95ce65519b7003b56ac8d8dbc4cf9851965dc709100ab720d
Date: Mon, 2 May 2022 23:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651533958
