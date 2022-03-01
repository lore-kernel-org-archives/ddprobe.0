Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56CAE7A
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 23:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646176284;
	h=To:Subject:From:Message-Id:Date;
	bh=q2dB7td2O1j6Zlqcf6MVbQnWp23lj7yeKUjSAQYoY5Q=;
	b=YCNVVb2UiFs+KUvjLY7ao7bET11g/8pSnHXE/63CjJUjuf9K07EjNF8jCPPWjfAp
	N5z9X81jfiNo00F8ByXPkGf/RPvt7p1MsP38pWNuyngXXYJ0KYM2F+oI8EHC29V3Fjo
	lbyctRJqe/eFTBu3481M1HQPt36sJOkftPZAfduI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646176284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q2dB7td2O1j6Zlqcf6MVbQnWp23lj7yeKUjSAQYoY5Q=;
	b=DMU6c2TvS8LiuhhGEezmZ/8GIQm3LdydciubCNBc9qeYHGLEOmFO3JZQz5D5JP5j
	oxngZwJSflhdD9nkeWzOdUGB54HVKEtZ375/KlOf63qLNg5bshmd6HHQnJOfeQfKo3P
	zuM+0Aj2PkCs4dKONvcO0wYM0F5zDKwSx44f/p50=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f47c0b01d-2ea42c72-04cb-4c92-8cb7-e3f80d325ce0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 24f9c0b73d9632f59b243c83de27750a5ff7d27ec1bfb45eac4573b354900fbf
Date: Tue, 1 Mar 2022 23:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646176284
