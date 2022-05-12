Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8E0160
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 00:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652314199;
	h=To:Subject:From:Message-Id:Date;
	bh=YTPi/H4rfVjv18b7CMHyfxPcqWWwp9/Iuw+HRMJ+UE0=;
	b=mGiTWY5OJJ5MbdvdEk5KEZ90B7WXwMureJMh/sKLJk3t+pvBVxgsRy+NluJhRMFT
	I0/w30qCAdU86jcnmAUJsfJfyPS9rcgh3pHLDj2E8y215tJHRYC+JGGlB7mlhXso88h
	HEfzdDVHyqlKMPTEQk7x6MF3Ys1KxqzaHsc9knTI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652314199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YTPi/H4rfVjv18b7CMHyfxPcqWWwp9/Iuw+HRMJ+UE0=;
	b=M2HbyF7w4m8qdSF27e1bAlDNVN66bz7INf+lVNu9Ce4miXcRqa13mkXrfcmxqYJX
	0N00cIfUPlFsqknwugqTc+RJ74DYVgwhm6TzsuaaFdaV0eHm2Kva1vg9gqs7Wy0yGJr
	cdmPfleyC09wsRC7YBNJYq+jPRrfBg9I2vKxX3sk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b599d54b-71a34aa5-3855-423e-93ca-01319d377cbe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 768d9d7b3384b7eded7f245f9bee17c68322bca58987198fa0404cf8ebbf7b23
Date: Thu, 12 May 2022 00:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652314199
