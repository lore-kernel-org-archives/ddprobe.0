Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5BFF7A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 09:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646903784;
	h=To:Subject:From:Message-Id:Date;
	bh=TQA1YH+shhHpl3MV7wzN9vsck55Phka8j+dJbcJl6yQ=;
	b=A0mfniJiXH4HsGDUNXRBJvlPbP6eoEgXKTXIAopBv1Oe8w1iGN8D0xncdUD01i42
	lbzdjsxBfIgl1GTN/M/W54jgGRBB8yFnZElNn6wpKxqISxR1mwp/V3v20K9m4xaX7TV
	exX1JrWEMpIjmuhtB8ZtTAG7cwJfeC2qr6U9iR+U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646903784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TQA1YH+shhHpl3MV7wzN9vsck55Phka8j+dJbcJl6yQ=;
	b=LNeyQr0FWKMOXprKAjKYjWEXNyBUtRbx2GcbP9rfYgKDmSdCLfHq1wDffV+NYNc/
	FLYb1plPmBj4Xg/wwLqta+Na4u8AOLx1WdSQGOZgJKbEpzxzTi3gEk+s+EBVjf1L365
	3Vrn3WliYhQ7CJ55JXSTdbfOkZQpw0Cjq/nNlA2g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f731d7552-59824585-6d47-4659-97cc-feef6d715391-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 62ecbe0c72b3e89e7af2b30f94ff33d576fa98022667a57564263aaf9e88bd44
Date: Thu, 10 Mar 2022 09:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646903784
