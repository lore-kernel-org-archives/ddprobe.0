Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226BD1879
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 21:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652044138;
	h=To:Subject:From:Message-Id:Date;
	bh=NZuczSCXUJnXMw1VJSnDkHTCeo594UXomuMLBQWQJKA=;
	b=bz8SufeiqZrEuQWvZsESpxg7i5D0Y5sZrR+NZ8xi9czfg+en+vljBEapfdLcRwO9
	mvl9Z7WGpFcBwdi/LsI9jE89vvuWim5m8/ntQv1nN/xKiEQHeuR0ng5OuU0Jer9hqM8
	+pZ5nQQOcRhV+pEHwZoO6SOlQlfxnxg+RHYaqZuY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652044138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NZuczSCXUJnXMw1VJSnDkHTCeo594UXomuMLBQWQJKA=;
	b=NkkkCur3kiWA3S9cWY/gMotuzTynhViXFIKrYQRnp+Kj4ghdNkMGvHeO7a0J2NQa
	dxrRa9HxMOpDkr070nxos/uLDt40Jnw32NMI0fiUPVo1h0YVvohTGkklbJnbmn523+P
	z8Hhkk120JC1yH2HKIMXVyIOucfnO+os1ikvd6sA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a581076c-b19c3e0c-2a5e-47eb-a2f7-aeaa8b8a548a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 05905214252deb432e5883c3443287d99bd95ef573f57df71f6705c22e81e1d2
Date: Sun, 8 May 2022 21:08:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652044138
