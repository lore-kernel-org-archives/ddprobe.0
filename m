Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF2F7E
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 18:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652898479;
	h=To:Subject:From:Message-Id:Date;
	bh=v/iac7LS2kUgYsErgKmgnAkZTnO27imO9kF78YEAC5g=;
	b=VJSSMbGChwVBY243sKVcmd2Bd91OheHmZBvYk962Tlw7oFhDBlWm70GCm7/sEmUW
	0bN5TCiXGsSZnHRxDpF4GSWI6WCz+JL2Ay/TAjBR4pLpBxVisvyco/z4Z22jLGgDYw2
	NacSS9jnYHtkShcUTIQD2BIcxz+OY7fNQEbQeZVk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652898479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v/iac7LS2kUgYsErgKmgnAkZTnO27imO9kF78YEAC5g=;
	b=gkgJJOc32TY++YRocKVEiBQ9ocrHzmFJe+ZwWL9GbEfX0s3aTiTQD5WhZFLvyKpl
	WiZu6Z3FEnPqt4CxVTGLnWdgWt1cUu4HNhk5q7DtvY3uYYjDbZFu4R6jurdUNT6v5Yo
	y2qCtWae0FhgHP4hWlE7xupQDJbryUS0vw4odrh4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d86d3ca3-09450e0b-73ff-4547-966d-9591700912ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0dce3cddb9c978281c8850564e93d305708c73e54a0bcd17f418a7b724bf59da
Date: Wed, 18 May 2022 18:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652898479
