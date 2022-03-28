Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0A0F4C6D
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 19:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648496399;
	h=To:Subject:From:Message-Id:Date;
	bh=4SRPqJy2Hc6oQXecV+NFziSWA5qH8rUv7APPxtbRhfc=;
	b=liBTr0KzBuRh7kOriBiWaXjXkfw4T4cX6cIKlzKhDyS8iQSJWng+CzDrlVX3NyZS
	IXQ/bVBUEpJYFOUpxZFtDWq3ZDPb7xPu950aqktpx+Yfbhc28K2/yIY6YypEPsxYsAf
	7tgB54x9xdVmFvfGVNrN1RAbwLDovLnpQliDFhrU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648496399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4SRPqJy2Hc6oQXecV+NFziSWA5qH8rUv7APPxtbRhfc=;
	b=eqdEO4W6rVutKg8Pi6Pdr/VH5YnVKqcQkafnrpv1bey7bS4ohhSemfG74M4Ob6JL
	Uxt1W3sucSeR53m4ciS3xsr5lwj/5ZqqgzEHbKcl2gL8OGh6VnzdKHd1rBiPl51NXCX
	Tu2ZFmzvun2T/A8fbf3saHYp/mo/kLVDNJmwBa44=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd20acfc6-f14376d3-3d0a-42f5-bac8-ae38fb14fec4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8644a962835731f5ff1e66aa552621333d1ba9316d0a355be9075be13e452feb
Date: Mon, 28 Mar 2022 19:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648496398
