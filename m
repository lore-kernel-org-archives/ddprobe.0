Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70324161
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 16:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647708384;
	h=To:Subject:From:Message-Id:Date;
	bh=OqchQz8TdCZ8/esUNTo3V18bHUKlBZCLG9sHhQpbako=;
	b=KLOdycFBiAEgB7NrZobskchVv8FDQkMJWDqB/etY7nAW92mzI25jEryFAgWfOYEH
	J4OTumI716SxlDZ5phhOLGu42BkgZt5w5Ml0Ad5gDWXLimDHnNpOff16BQLj+XNNGn4
	qmiYSxl1v7iFg1UWelO9ZRDPVbuPHPJF6E9SIRdI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647708384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OqchQz8TdCZ8/esUNTo3V18bHUKlBZCLG9sHhQpbako=;
	b=UHP/z7lrJ+nd7cEe7NtYj3VGeMpVjMyMGmiLMbdIDwFD3d/tQPNFDT8IS+mkku+K
	ArLIfgu3hMwXWjJugtK1dzHlOSoW7+GGWtQyAigOs8enf3w2CuaNZMEN6vk/4ohNwTW
	jl69V8zWrz/29BrY5qYmddfGFnphVqGADeGYQfHI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa312adf6-4397e879-f7c8-4095-8275-3258df134982-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 304be8b79e4434a09b3de27ede78a0ef3e4aba8b44dc2007caacae4a618141ec
Date: Sat, 19 Mar 2022 16:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647708384
