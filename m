Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22AC615AB
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 02:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651545478;
	h=To:Subject:From:Message-Id:Date;
	bh=dc7h2Qz+xemPWFNvHQTpbU3yHGgFAOREM2G3/IUsMJ0=;
	b=OMXfo5mPeSW1cByw3EW5ieMV0EexHYRJRYfsQrO2NUA7Ih/1cn86VfR34tls4o7C
	J76HsouhSa0JFeFD7PYlpsGWEBFApiMfQlrHbW2olsV1ViApr5IKpiEzcgWVSpK31wL
	ct1CIy8t7tGInPjiqGcXCM5G+/1o2NQ8TNzC6UXc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651545478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dc7h2Qz+xemPWFNvHQTpbU3yHGgFAOREM2G3/IUsMJ0=;
	b=Q8IfFvTjuy96pfMiW5kf1qscpNLcoLqLQqNULbivCWdsHVBi9vuuocKp8w6f3Qh3
	28m8SbDPAPOKF8BWE64kKM7WySeRoWwP7m1Va19L0MRmVNo0I2bVPEGnvA74F/hSNRO
	huBYzDH0kDi7DaqfwUFjvw/jnNhM9/nWtw7284OU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018087c81448-e0e7ec8e-408c-4159-b9ed-b32f6321b3c1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b139be969f4b6129f9dab43ff3e3baa6690fd53e9f3eaf9732bd3c2cb1a8e245
Date: Tue, 3 May 2022 02:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651545478
