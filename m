Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EECC37E
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 17:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654104059;
	h=To:Subject:From:Message-Id:Date;
	bh=+ldXOgL9F10Gx1cyVAnQJSwmZDxjSqnhAK+SqF7y7CY=;
	b=CxIpvuqdY8LQzZWjyRkzjFkjK8a+Rn+dIrqGx4KhUvbpRu6pG6olohwvRd8V4Ryu
	rFAMRv9oejGhq3f2NDKknkw1Cu5np2RYGEgXBNDT3VErGwmBnPalOAzqGyfFbUEowMG
	mtFCDvlC99u53i8xs08+5Q16hQW5dq7GpaA4J+2E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654104059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+ldXOgL9F10Gx1cyVAnQJSwmZDxjSqnhAK+SqF7y7CY=;
	b=NI/wRbQGl0pc8VH4u8/JxpIHrCoKdMgaXGXSIUCtM0tQ5BcFTPGUQ4OwZIZokc04
	lhuDGGcJwLx9kHFV0hzW0WNR2PJ7WRPIw9scd+f9QtLUM97VWkBQqtXV0l8gxGz3qGI
	TRUFOO+8uT+odXJ3yq4yCoDtQEr3Yd+QJTf5W300=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812048edc8-93aed1ff-9412-4e79-a614-d1fb7d62577a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 830438b8928a50d5539bf213dc9bd37188ed8a516710e368b199ea8881387052
Date: Wed, 1 Jun 2022 17:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654104059
