Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEC65612C
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 19:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647889585;
	h=To:Subject:From:Message-Id:Date;
	bh=+BkjCDFHTLdeSkD4ps2tObnUJfwepcs0BxKb+6UxYjA=;
	b=edPWEfGX2OUC2e/lCXDnsE5cm/vW9hFhirTcrfeR4SJKP5JnB0ezqoECgHgY6pqJ
	v77j1TSsU4skHDDlDWHvI4qI4q5A98/EG81Y6VZ9FL8yS4WFvsWkokGLqa2i8TucfWz
	5gciT2aJZNWqtaYLcqK/jHggzDLO9+X+AC2nWYVw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647889585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+BkjCDFHTLdeSkD4ps2tObnUJfwepcs0BxKb+6UxYjA=;
	b=b9T6wX5Ro9C0J3p4uW2f9bLG035hIs0SUexYcNiKBBV7siZtzncHkgo4wQV1S+Yd
	LUSG3N/U6J8hPu3Ap35etnGmK2+4L6/ferwU0mykMBOOTF+54Y5KwXyBYP4afCDtuo4
	JucX2bsA7ks/mhwJpQef3nKmurrKnm9W0W8EgqDg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faddf926c-06b5a604-f37e-4163-ba12-d3c3a55ec226-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 829f6d1ce30e34e0c079e95042497ef112b2044e3fac442adf847eeb0c084df1
Date: Mon, 21 Mar 2022 19:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647889584
