Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC2547A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 09:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646905584;
	h=To:Subject:From:Message-Id:Date;
	bh=gVi1KSxkA6k4lgF2S4jan9ADjQVEh43yDAArKz9W/9A=;
	b=AKIrVOOZuIt5be+9jtLWIFECrFCd+qSR6yxPEMQ1y8H2jtoKISlX67fkHhz03wMe
	E7wA617/8WfjGWHw2Nw9y2dXFVK4v43PqXGYJOvO4dFbJvPbssnJUoEsJX5mK2i3nNs
	m4YbNZhtloQYLs0sa7hqmbgE8vUNRyWHD3hXL2Fc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646905584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gVi1KSxkA6k4lgF2S4jan9ADjQVEh43yDAArKz9W/9A=;
	b=TT//tcslCSGIBWl9w444HzQscK/KgddwFDCQ1dJLrNzoMjlHBdEEDyd6MreDr78T
	zUxk2FMCcE7bgqL6bKYbpltHLCXsSGr4b8W17RMInhkhD2+eHGDvXf9xKynT3dUNDnI
	REpyzNVCwHftuTwVJfdYrM+DT1Z225YlP4B1A6eY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7338ec75-c417df29-cfb5-463b-b47e-3639b7b6b966-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6f5722baf572b04f61fd9dcd47e3e36822018fd56be549cb6b06de283d7e71cc
Date: Thu, 10 Mar 2022 09:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646905584
