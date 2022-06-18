Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4F8B7B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 09:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655543879;
	h=To:Subject:From:Message-Id:Date;
	bh=oYRZuXdZCoWL3DS2RU0YJPGYcv1ru3bapRQGZHvH7MQ=;
	b=gGUQyt21dDdW5UBO+pUImy+K9WiXFQcFvSq1ASOd2qmrHcLZ/zvvqJD/RmgZCUuQ
	YFRp1LL+J2arngQXzLZQt7x5Uf0NqkuTYuc1zzo3YFeJKDjQsSQRSx6vE0sCJSo49nh
	Or31kUrR5DuT3yaX/SpcnPp1EChjaEHTdC7n56ZE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655543879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oYRZuXdZCoWL3DS2RU0YJPGYcv1ru3bapRQGZHvH7MQ=;
	b=U6ovB/PLQYJFxhaafI9ckF8a7ljoV6IPFumWzpytzP5PhR5WZHgtQMT+FU/nRAKI
	pKVVWIFv0Amj+8qkvmfP4PpvJCAMMXh4mZ8LDcfSwFCmUAmpUmJjUUOIIOGbavQZzya
	noqbUnQTDSbFiTzDOHpLAChqULis18ShpRPlIdAI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181761ad646-1c07130c-6445-48eb-a1dc-2ec2874ee7cf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 07b8f9a558887ae8088367348b67d5cab64e3d6bb161cc9cb535aa170583ee41
Date: Sat, 18 Jun 2022 09:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655543878
