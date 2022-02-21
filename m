Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DADE33C1
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 18:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645467084;
	h=To:Subject:From:Message-Id:Date;
	bh=CEyEjokzxT9uw80+EZCSgEMPQEWc7tOkXDMCcFOajC0=;
	b=GWWKKu20YcWGY0vsCu/V5h2ASWArQ0NcGUrSHz2GwBZU7AQytzOL6e0kRdHJ2KYv
	v1Ca0Ho3EU0g27Q6nbY6IQEkb4+Ff5BqiwuOT13L2ilVPJMu6KO2qfOC/Q5auRa7zJ4
	poqmsDfb8rRKiV7SoxbcOeWVfyevUAYi8wObCYiA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645467084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CEyEjokzxT9uw80+EZCSgEMPQEWc7tOkXDMCcFOajC0=;
	b=N4YlQPSZ+HRKigseXoyj7xiasF6L6jw4j6TrDwjNu2fLLboub6mEdAPR18dCpNmV
	k0NxEfW33bOHHpWkRA1YePIYcXhqNjNF6uVUk1tbuf3VDy6kf/mSrFUIYCLupvTi1tA
	cVUEbr4Xz476Udt6jiskeyp3cnTYrD5aK/KAbVn8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1d7b281b-0794072e-1859-4c66-8294-e177db1e3c7d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a47689cca8e11ad9214d41559fd7246dd708bc3b94b8c6319d703deea4fa143c
Date: Mon, 21 Feb 2022 18:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645467084
