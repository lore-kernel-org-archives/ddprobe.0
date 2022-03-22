Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDCE7622
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 02:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647916585;
	h=To:Subject:From:Message-Id:Date;
	bh=1luBwi53fCI3yW2W46twtoFMXRatj3OojxcgZuzQZTk=;
	b=d72BAHWHJ7A3nsXa+kcHaDiggp3WKCeBYurozs1VQ+4Khz9T/kJ3QxEu0GzujWYx
	WweSLXoBshSsK2c38GdT53FdSisD1Vh/mvr4DKsFvWM/vyehXphV6qs4BDZCRI670IS
	P6LIlSUhvKNpogsqZgWknbZWSsabsQ+DP/k19F90=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647916585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1luBwi53fCI3yW2W46twtoFMXRatj3OojxcgZuzQZTk=;
	b=ZrVCqeQ+ExVjt3Ce4Yyvk5bpQUFDiPTNBexpC7GKj9uClfak5gjnD4MDkcKl9gha
	fDqdJnbwDUywCXVrUmqHRTPojqHjPLCXH5gInjmOa85wgnhBJl37GIg9mU7Glpv5Pyr
	ViLhlU0l0j/Lcnj2GIU/tkRsNJKzOfcLey1Mh46Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faf7b8f21-8f942ae1-5faf-4008-a7fe-7a8e88ac52f4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9f5ce96f7bdd0ebc42c2ddb7ab80b9742fd505c0852e8f8dbb86aa20c494f9b1
Date: Tue, 22 Mar 2022 02:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647916584
