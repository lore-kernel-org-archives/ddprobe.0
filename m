Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 787907B
	for <ddprobe@lists.linux.dev>; Thu, 31 Mar 2022 23:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648768438;
	h=To:Subject:From:Message-Id:Date;
	bh=QQbugf4BgOed1kBKyg5oAHCCXGSzveBt3+PAnFY+lv8=;
	b=RPRBbUr5JbJTCxvcF+ydGQ4FYR9zOkbG6ZgixhLPHsJsUbMFVzcYsHrpCp/ZB2B7
	I0M3e5jFvdG42g6DWvI+romTk/uGjwfbvPcPhU+DQcb0OLLHEXAUKsVxazvoautQj2u
	72+91LQhe1xEr3gxIj/0LEzECP59nIN/NsXnJ+Bk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648768438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QQbugf4BgOed1kBKyg5oAHCCXGSzveBt3+PAnFY+lv8=;
	b=h5/d5kg10m/TZ2qbWiFMyyRPK0l8nqb7pCGT0ICzTb1LWPfYQ2v40twAVPVWGGuB
	OGlpjm4A18GM0F4iiy0I2k1y1i3rnVRR6o7kfL8foeD+ndX58iOenbhYBm+B/0hQpsQ
	7UNJtbbDcZWSDU7xEsFbV9cQKZewXQqIOUcXAYoc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe241d05b-9f6c0af0-8c1c-40ab-b58d-42079821d4ee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4fc4c01e3891822a22d9b5518bd42c7f52c1d04afd587fd882c90f02bf0fb41d
Date: Thu, 31 Mar 2022 23:13:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.31-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648768438
