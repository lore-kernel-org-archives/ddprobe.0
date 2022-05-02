Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CCDA17D3
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 12:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651493038;
	h=To:Subject:From:Message-Id:Date;
	bh=R+WiYhPzZMo2FMy2q34uEyJ+Kw88BERNQfU1Ss3co5g=;
	b=QezcmmxxfNxDeunjpLkD/c8mSLy278MUncB1hlnlaSnSTZhhGzdz+OJd5EXReWXz
	Wtt2fczaIwlOoDcDhEAFAriDqLLgETJjsCX7WQqnHtcFX7qoQmoecXXglryRCtU/oQj
	Bv+gi2rsji1SEgKHRYKwcxZkPfpmwSsMiAepeL1c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651493038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R+WiYhPzZMo2FMy2q34uEyJ+Kw88BERNQfU1Ss3co5g=;
	b=Z4Wb2W/X6BfP0NQiHmInlaLhX4IynDggBt8Z+Qf2muIGGn7PZe8fCooL70Q8o++T
	gAMkVknHiInIYldyJhscnTmQ7rx6EYO50q8iu1tVlO5T2N1IiRbxMjKCWJdxaeQ/SX3
	tBD5ESJNvLEOf02Mst2NhxNcV5u1N42cJ9K5dTbQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018084a7e8f2-ffc19c86-7ab4-40a3-85bf-529f6e241e88-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1691a2a30f18ea54f6b70dc357d8d454e4e137fbae035da7294981ec602ee070
Date: Mon, 2 May 2022 12:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651493038
