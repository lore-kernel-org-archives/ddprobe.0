Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFB917A
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 12:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646398584;
	h=To:Subject:From:Message-Id:Date;
	bh=+Z9fkXu5mHy15JfOqyXfJqHHHO9GzHMoUXOaB0OO0t8=;
	b=CrKxygnKpo6BTExFg9WOTGc6kgm1VAgXthHL2sXZ0qneFbfFKVbiDlC+1UwFw0M5
	dK5gs0/Brm5pWhUyRAxqSecioYGFZ8qX7lRgT+ByWxPF/jxL5RXz5+8x8lnDW2N6xxS
	Z3eK5jqr4IMDa196uUYmrECTiEbNv/k0wPDOkVpk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646398584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+Z9fkXu5mHy15JfOqyXfJqHHHO9GzHMoUXOaB0OO0t8=;
	b=MsjitPHNNiOV9eN0NgofMHaYuffOq8j8P+86bSLNLOTGHd2qK4lE5E94cybDx35Z
	82ZJVGK6ymPWhPs3kFZVzsnco5HjcRLi1X//eYvqLFctIiohyTSRh9z8gRgTK+RLpla
	9qDuJEaVLpLKN/o1VTeYB/iwNRgPwVP9yNWo4JJM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5500b7a5-6f99389b-ec0d-4342-873b-e814bb18ca6a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 947ee9ffdf1b7a4bb205d5557e239b77dc78e4ef84f066af8a5a41e2f96e917f
Date: Fri, 4 Mar 2022 12:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646398584
