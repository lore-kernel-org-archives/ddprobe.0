Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA8A48BE
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 11:51:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646740285;
	h=To:Subject:From:Message-Id:Date;
	bh=dORBGbmslnnrXrLrs9GPh13eQzmMSOqF20dvycdZgXU=;
	b=elqZ/LAyLlnJhAtsm3rd5R/GEQJacQAmiVuH18jb+cHgkjLKXdrz/2rDFsecMKCi
	G+jLUN/UTtbPjxQUdyWBrlRPsaN3OQ994JJNgI1awbtDUHTRSqsDiswtBlpE3h9kior
	PJlGhMzCe1VoqF4W9xg4K+AqcS/JwfzyGNqiddT0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646740285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dORBGbmslnnrXrLrs9GPh13eQzmMSOqF20dvycdZgXU=;
	b=az90MdMQ7kixs63OD/9Cr65IB/kEq1Egg1E5PqSeUtRs/eZ5f5UQ4kADL1zSoTI/
	IcQatq+OqUXecAHGxnC4mT37HdgUqdiKO+ZneytZ2MiC+fX9O4LFZhl9kTg4MYi7QCW
	PsgIwsw0gdT0U/twU/NIQAMRD+PCDZ+nrjlPPEd8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f695ea559-b55d514d-e91e-4bbf-95ae-86a8b1ba6c88-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc8c8fc74ded9bf2998fd8d63e12fd5ee7c5cc3aef4c286731443992eb7c35b4
Date: Tue, 8 Mar 2022 11:51:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646740284
