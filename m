Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B847C
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 19:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655147219;
	h=To:Subject:From:Message-Id:Date;
	bh=iNmZo7AhvOtSQxNbORy378iiOmEvvzPXKohscFNwP8I=;
	b=Tz4qZoSdkzku5DZzaGZWW6cYnBaxM2EtdMYWBqQQbNsfSntfqz3GOerfyl6h0wwV
	0Kr65Eui77oiIZpB7Nvz2fUlwIijyr4Pa7f2FND2dIZgo9W5FcgrHxlV3yIxZEjhJ83
	9ZvoGtSI+NvkLxwF/zD61fYFEw/63LZbd3vPTC2I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655147219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iNmZo7AhvOtSQxNbORy378iiOmEvvzPXKohscFNwP8I=;
	b=GQmMR0NCOITBsxiyPoSXUjtWaAu7H1o4X3aa9chzWmQv4dQls+uH6+FPQRiX28CH
	4s6QGNZLp2Rxz+WnLYJfDz0EZJu3e9TMSafXJtAL4N40BAWvu5RNJqJAWbLox1AeAGH
	9JaUREAnUKgNX1dCQDJjvB4Ztej+lBqTKdqsyHmI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815e76494f-fffff0e1-84b3-4ca4-8535-1f834b8f2c06-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ceacd2831a3cf76edd1377d17fb74fe3b50ebd2e837548e0b2b3ac66a85d1c41
Date: Mon, 13 Jun 2022 19:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655147219
