Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A648A1853
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 11:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651316758;
	h=To:Subject:From:Message-Id:Date;
	bh=8IJ6XJiiXHrRT+IHM9OdEIssXO0USoovoKRBtub6TuY=;
	b=lfCVgdvmhwGkAdhR5gCxhDRagXhnZX42aRkCBMJJS1cFX6MCQoCneKzjWBb8KFDb
	4bJPdG4uJPDPr8gN06qImgTlsk4abQpBAe1+Mvn6SnGEbcwSGyXxEukNzhSoiMpLjMJ
	yspjjfwnvAlbKn3wsnsz5SG0UO9zEBfnp3gjKofo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651316758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8IJ6XJiiXHrRT+IHM9OdEIssXO0USoovoKRBtub6TuY=;
	b=aGmC6BJgFhe02jBfM1gp4ESBlxRlrR8yV/42ByUwU/3ZZp+m7M3DHhEGjrrC7e+o
	lwcilvD5rKneq0e84ZEhCiiIe3zFWRXgS0oqF6w5Dg6kj7eTHTllWailhWgxtOFVk5c
	fcmRfgrbdBYd4UyKdcGWzRz19huDc214uD48ZfWk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807a26170c-e64a5ca2-39a2-4677-be10-a061b5cc4623-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0476ed22f8a3924efbb6842f3d570f37099a22d7c12c649e1cb5d7d215c5b77c
Date: Sat, 30 Apr 2022 11:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651316758
