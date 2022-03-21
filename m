Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A56420E4
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 07:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647848484;
	h=To:Subject:From:Message-Id:Date;
	bh=2ln2Obhm72UrbyWqfzwqVTVitXHTZH8jnXyGgUVM9gk=;
	b=mkL+AKpgE3b/QPM/mGeYg3kjg02DssbjIA2JdJ9beOtAeQX7PRfbAjQxTJS6ii/4
	1awLidSoMzmrkbnpgP5vsqP1NPw+HTHA00f37/SXYjSGGLwbdvVajjC077lOXWO/RSl
	ozh27uek81ll6khtgaCbjfk+GyC6/6z5n2Nf6VDg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647848484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2ln2Obhm72UrbyWqfzwqVTVitXHTZH8jnXyGgUVM9gk=;
	b=c5p3ULVpa53f4H2fJTnL8uymcn5P0iHjMrSSTtoswyFWakCcC85EO2yo/BccjvTn
	gWfD9OXRy7ZXwaLp2gQIZ84mgyU1vxvQExXVlr4imq8gq7Bpt7GK1x5J/VBy1FZiSuA
	CdeA6By7/cBr2NjOEEjihPFAkJVgaJhys5S+i7TY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fab6c6f9c-e05e7e22-fb98-4010-98d4-6ad5548ae236-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 14a3f46bb826522c3fa2ea27870f6c023e5f8cf4a1da98e2f4ef78525e81aa5b
Date: Mon, 21 Mar 2022 07:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647848484
