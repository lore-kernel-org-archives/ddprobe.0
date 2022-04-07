Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70B5520F5
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 07:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649315878;
	h=To:Subject:From:Message-Id:Date;
	bh=AFQdpoBYAeGvix0jHK7LHcgGbV9DDjvf2Lwo44CKNfY=;
	b=F+BOdt4oHelqXB4Q8kSNEA+/L8xGOcqWDZcpVCkfSMlUO/ulpu1kbOT/BV0d8YI3
	G1qvbVrXtU6T826zo+qV3ET6RETJbLERWsWlTsQeznqDmPY2bV1dPrLwTL9ulx6qX07
	O1EVTMWdYAxf95Lv3meWJR3OOcWDEN+dMr2KAJZc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649315878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AFQdpoBYAeGvix0jHK7LHcgGbV9DDjvf2Lwo44CKNfY=;
	b=NxI7qhCg9oMndK588t4liAYoLCnK2HhAbOpP/VbKQl51TjItoomEBBBsOfdJNSA6
	DnFEhSmRL0szAOIAigzDJ33Ohv4mAXvYdVnQ1fK9zVqDedJD0MTCkAqjQot1bRBNTLm
	u2X4E3ygFtt+1gE2ienBKWgOD1+KLc/ogTJZy1A8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018002e3158d-c49ac055-f67b-4aea-b78b-7fe209bff237-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 08c8adb2c9caa8d68d185ddde4339c7c7cc15ffabae7b5b515900759231c193d
Date: Thu, 7 Apr 2022 07:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649315878
