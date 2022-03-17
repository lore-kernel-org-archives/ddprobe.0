Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E72672F38
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 10:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647513385;
	h=To:Subject:From:Message-Id:Date;
	bh=WW8FAE9B4qM9CYg7jq0NrOA2PcjKogntnjY7WSboUzg=;
	b=Ba1rCuAvxplNqAmYHB5DSiTblel7UKcV/XquJvUFd0JqP7Sf7yDzLVyWqtDs6/Yb
	8PfIN2PIVshZTbCzfWJ4KGzZQPCERf1SGgot7kxAN+DDQ53Rp2Noxdrkv4Jl3MQEVWy
	SSEwtRZ9qhPvxuxDMCxqBu3Mo58FSsKB5Q5y8IJA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647513385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WW8FAE9B4qM9CYg7jq0NrOA2PcjKogntnjY7WSboUzg=;
	b=acUCNK8bIXYW9A6du98YA0zcyOqxWT3DRxX3VjPfYnF2HMiDUAhaE4Yzlr4ovnHN
	N0tZM6emQnCr9tCVT/ygSW62sGyYWHDfZELN7LyqRzUZurGIDJ9/ElorjsoQie+UE8+
	i+nPUlcXFUz9UVrG5lmZTtFd6xt7HgJoGTWtYWRk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9773370a-97d671dc-4087-4fe0-afb9-35093bba882e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 678af59001336f2ab4dcd76ee26db73adeb1651d9e804c017ffa09c6ea5bf38a
Date: Thu, 17 Mar 2022 10:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647513384
