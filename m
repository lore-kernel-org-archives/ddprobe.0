Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496EB7A
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 04:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644640853;
	h=To:Subject:From:Message-Id:Date;
	bh=m5BVSswrrkCS+qkFdzZTfbwYnoGtlnH+VKCopEnq3eg=;
	b=cZOIxZaFDNR8S8pafJKtgQCw73UEmDxqR5LcITFxLhYh6IZy/vdyGTEYNogfiZUJ
	ptLJrHbFpn+vVHA1CxXNYLzzcOuYB/Tbs4zZ5FshDVCYUjUJcpsqnJW8PlsFJFJRjsv
	hEAljqmG/BqsYgIcNhip61BulNrOicTZXDfPYi1g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644640853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m5BVSswrrkCS+qkFdzZTfbwYnoGtlnH+VKCopEnq3eg=;
	b=VPJpUJh83d722/gt3jKKx9qzM5+HyLFQuB7AIZ8qXusyay0olP1jQ+Xfc4xP92YZ
	9PnWGIodwDYBfcS0Dhb+Vd7j6uUjlWgsT1RkBis8svG+iz6+Nq3Wz3NOJMoBB6oNa4g
	Mq+FjjXI/SIaL+htFc6+Nql2F9z7j1efRYNsmidg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eec3bdc56-5150d729-b280-4e83-be9b-c5f5f3ea1df8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 369171a059ad42291df3a34579833d1b0d5fefb32df17f5cb822de598b09a74c
Date: Sat, 12 Feb 2022 04:40:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644640852
