Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246053D82
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 21:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649800138;
	h=To:Subject:From:Message-Id:Date;
	bh=6RCvKGxp5gXFH81fFk2oVP7t+TL0YlRMU3Rue3squkI=;
	b=YiwJ6yGJYXEZ0DMNdGchRyQFffOmaYri1+9sJrL4ucxXbG6uQlhJ5wFZAfQ5wFgw
	0d6jlkZwNHhXw6xv9ReJK9yv5C1AKZtS3M540W0FcrJ2rM/ojZ7gMnnVZCWszKYNOqc
	wE0I2BOvb9jK+vCaZ8ybDMZ0PaV235OQLektvetk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649800138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6RCvKGxp5gXFH81fFk2oVP7t+TL0YlRMU3Rue3squkI=;
	b=HDNMNeOSh0VyO4j7OEUMHKttCnuNfYl6zkppQP38Ech1hrHy7aeHIXilVJcnj2wl
	96HKOfDlLHnP9t0FR9E44X8dDR87EBjHHcZ1pzSMhHISnZcPSB+PLJ9SQ1d8DzFwDK3
	zcbYIcFRzsYiU9Vdfl9aXOGw003L0sOO/y6KeZ6g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801fc04e09-3bebb673-0046-4ac8-9b66-bc10077044c1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d405675848cec90637c941265659abb270b10aa3ba66c3fddc6eff6a69c4ea15
Date: Tue, 12 Apr 2022 21:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649800138
