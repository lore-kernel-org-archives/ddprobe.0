Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A7CC5115
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 19:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647632784;
	h=To:Subject:From:Message-Id:Date;
	bh=oKJ4Q2+DcWVRAYNhdrX7hLRrNjxEtgZjol+d/S96sB4=;
	b=AW91zwOALusLY28RXBU0EiZP80tW2zabb0R/5kscO1Itrr1inPhSPLK/nexB4/pl
	fl0yDVxW5aaBRMQQh4Vxq4bHmIHHnXyXQQv9ARQw8bWenmdMmavytGIFhaDr1O5mZr5
	jQufYByDVwlCRlS813hh28WCFetjhEUlUqOoJHm0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647632784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oKJ4Q2+DcWVRAYNhdrX7hLRrNjxEtgZjol+d/S96sB4=;
	b=PtaqrFUQxVy4rX/TAYhNSOQI1/AQ1/dKwlutL8GMSivoYQG3juFLcLacqwje9us5
	+d2rGbw9t8my4uAaijWI3Febe/b8iLTIkAMgrGSIHg/fvdpaKnMtLpH2P9I6BuRpxkV
	WcNHoMtrbGiFdkzVR4rjDFKEcOeBUo2A0h0wkWmo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9e911d93-3d9164ed-681d-41e6-a0c7-3594cbccb9e7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b790aac3e7f84b2744da5fa8ff2b243b540cb6e2dbd241b214fd493b9289ca09
Date: Fri, 18 Mar 2022 19:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647632784
