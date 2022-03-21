Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D53F2F24
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 10:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647857784;
	h=To:Subject:From:Message-Id:Date;
	bh=uHf+pTft6vvun7oUH3IZuoo39QZrxrGjMbl0zEVp5Rk=;
	b=SxHAKA01I9D5hmYVLUKA/qvzdi5JtmcmPOm2Et4/2zfsIRcM4jtbl/LwRWUuKNgc
	FU6ptPTFQJMwPpATJydd7VQYIqlEAboMThfsKpfPvuYHmffetuXxqUSnrsYgdNc/5aW
	hRYLaEdhw9ZC2/x8yKrPqUwFqFol4QWa1DS5V/tc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647857784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uHf+pTft6vvun7oUH3IZuoo39QZrxrGjMbl0zEVp5Rk=;
	b=kc3C63bxKkcvyEz1Dk7s+hKMGZaiP9ZJ9RW5eztPkFo7EyQu9kfP8j6MmLIo2JdL
	DEtJN5cpECeGmhACK38pAGDkDkOYaHNCcwrKmpXfTjRuaiHMUNYRcV5XpYtScpAoFob
	32DZOY8PIQGtsjh+JLLSf6rGKWk12z0q/MDUYKos=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fabfa5789-c7fa5e81-ebee-498b-97da-7efed12c074a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 87d4bb14743a60f986cc7f2b8e8ffd91125d1e44137bce2a553e00d8d73ff85e
Date: Mon, 21 Mar 2022 10:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647857784
