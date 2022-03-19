Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FC317B
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 21:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647725484;
	h=To:Subject:From:Message-Id:Date;
	bh=2b+TsfEx+vxkAX/UiumB4L9RQzNCrbn4gN4UteM011o=;
	b=Y8c9EyYzUECxieFpRNGWzaUGkw9Bcdvyty+b8V5GZxOTQH+vFEkxv4+Rp1XJRiHm
	AQXuMoS8cdWNsHAnsc0sOWjBBgzfKIrDl22BFRkSN1SpNTO9WJtmEOOBW5I9ecTf2Ly
	6CWJTAeuik9Aa7tu2owvVXWZmiQgsCiYVjbXXyK8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647725484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2b+TsfEx+vxkAX/UiumB4L9RQzNCrbn4gN4UteM011o=;
	b=R9Z9aNAgZMoCbAm7olIgYdGZFNIsTcYJr6n2blJ3uu/jrkGJRRrHXogquSVz1upZ
	63r2yQfp1d7BaxGkhROX0ZnVi7G+I672ypkgfL8AMGrlcEpnAvkX/Zre4r/R4GELRxB
	AAAed+BBCWJikplPw0sxSpFpCCHEI/kQkR2R/Ahk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa4179ab8-1d932300-90fc-42be-895f-8cbeba910af8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3400f83b8435138fb1037e5fa78edca465fbc5fbf1d1286a30d6cea16e20f02f
Date: Sat, 19 Mar 2022 21:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647725484
