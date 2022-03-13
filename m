Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59564A46
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 10:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647168984;
	h=To:Subject:From:Message-Id:Date;
	bh=jjlOm+mjjE7WOrIeHx1w4i90ge/WM5tGqBFHsp87RS0=;
	b=DmoWIfvZzx88hc8imPb7sga6AsVhIz2u3JRBPtkQfKjOveeJ+Y6Xiw03Owq1Th3Y
	m0iiD3RRrha0ZzPIAbIPGgdY/tTZ5mzSQhtkMyXCvlCbv/A08/XcktRspFN4zwZV9jt
	m4PmrNIncMIXhfH44uEHtgfrZRdTI+Rz9d8FeAsA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647168984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jjlOm+mjjE7WOrIeHx1w4i90ge/WM5tGqBFHsp87RS0=;
	b=VuMC+i37dtqLZKY3aMhsckHGsGy0iQwL0USzAXRxkB+fCUEj4kON7USy8zDKzyng
	X0l2R4XbjXWgkkIdl6t0LsejcW9x92oXUrh8xwkw6KAWkTe1G0T/gIRGG31cdvYtOt/
	C4fB5j45v0HdoFpulPEu7qp13eiJ5P0XMhIrg8ls=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f82ec16c4-e3c0dc95-a428-407c-8887-ee4e701b05df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 23817c1e457a0838db782773140ff6440251870200b4c543740b1d0dacd13b62
Date: Sun, 13 Mar 2022 10:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647168984
