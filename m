Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71FB515AC
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 01:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647566485;
	h=To:Subject:From:Message-Id:Date;
	bh=pNLBvsmvEPKszaPeWAc5AQL99V3XVtVQYrSPux4N2Xw=;
	b=cMzS+FG9eZ9NBIQ0mCVYJCb4278Dz7d7jQknkFRUN6a3mWoe3/rHWkrUun1vz3ic
	blS0fws7Yaw3OfcqS65iNziEsC03n/wjwfS62dbOXAraU01em2wNyix/BlqMxQf2Xzd
	5o0WO+s0yuBTfH9LNBCq/uKg+18dWGZ2Q8CGRbXU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647566485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pNLBvsmvEPKszaPeWAc5AQL99V3XVtVQYrSPux4N2Xw=;
	b=cNxR+wNJEFgFt/Sab+XdF4NrPBpxKtTkWeLs7YoTo7XT3St/KDwOdgMOshCoaL6L
	J4U+P2n2oUaF8rj/hq5YUbpjcxn72f0kCnNRNoDFOXKZEfgpwC2HB1SP3/twDSfBS03
	Ornwv95ucta1fdXF8AXyCRGEQOTfQKje61UxnLUc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9a9d7525-09574f23-569e-4b36-923e-cdcda4483d6c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c2a72bec6df53e046eded34b36a7c0829756f617922c3c55f626d8c03e33dab
Date: Fri, 18 Mar 2022 01:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647566484
