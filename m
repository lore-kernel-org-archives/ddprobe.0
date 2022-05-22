Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C0712F28
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 15:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653235079;
	h=To:Subject:From:Message-Id:Date;
	bh=TQj1LF0Qyaq1olcTxwFk7ocBNZOsR1nQxsXVYGHjQOA=;
	b=U7EoauSlTUikZrpnf9Sz60aqvLaRm0dmHwQU3xmcfWgG1UESLgELTo29RW05qKUv
	HJTRYfv1a6CwhNGv8o/rLzFCkuUxrhNloJ1Dzhkerr8t8gpzdaYUvzTTjrjTHh0fz2s
	qr+/g529MBBBaF9XW7HU+Nieo98cwMvgsziwn5wI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653235079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TQj1LF0Qyaq1olcTxwFk7ocBNZOsR1nQxsXVYGHjQOA=;
	b=gBYGAAyymSVdxN2yzqhsgcBzOodSen+GDt8GIttQwTmsXWVaZbXQlH5Yd1DcMKYZ
	4pVeBgB6sbvv2bVp4ArBlThx8dLvURbYdx7uKXJtVhr0ngnSd/IhwCGinR7Syqnqz1R
	oEKe/+kPGtF2ZMmqd+nWvaR0A9YcGhtbwQvLdPEM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ec7d5881-a37d206d-04eb-4bcc-b82b-b8cf9ec04bf9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 06fcd6980782b3c35635d4b537071d9b48b8d422ebd94df4dd2443a551de855a
Date: Sun, 22 May 2022 15:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653235079
