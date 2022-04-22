Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5212A290F
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 16:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650646378;
	h=To:Subject:From:Message-Id:Date;
	bh=i6ArBCed6Sm4NtPwHqJVxD9oopicesSTZgGH6KxBQzI=;
	b=QOCIGepip//3pRFFGFYB4ziIt+NTyoejHxVQI0lzGJyiqtSFxoBu8IZvtpxMx26e
	rykrycm2chvOhZtW547SWR5i6UtPTfoGCef7I8UeZxNeb+mLmKBfCuWGO8ybApMqpbB
	HEn6dV44Psfo9IvmrPVVCsiGGW0NkD9K2bwNBfww=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650646378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i6ArBCed6Sm4NtPwHqJVxD9oopicesSTZgGH6KxBQzI=;
	b=Q1u48XARRpdPIe9d9iDIulUZFkZJ7/uEW2xhVIUsWvfswHm1KBhjdNER7Ra8TdnI
	QFyo80CuVEMQgU/Vcy/VKuBHELGN/fb0e0zVSIHgZK6mXDk9nWt7Rng8zxc1BomBSrG
	0+H8ZHqF4S0T/lwEHu6MMoaMn4zpzxz/7riIzucI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805230e743-12b76802-fbb3-494b-9acf-996a027b4a24-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f9f1bbd414234dafe5810dc9ea8600bee72fb60e99f5c26ff4fa0fc1d73edd40
Date: Fri, 22 Apr 2022 16:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650646378
