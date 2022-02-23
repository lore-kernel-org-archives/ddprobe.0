Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB0CDC8A
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 16:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645632085;
	h=To:Subject:From:Message-Id:Date;
	bh=VRMWw4qkIh8QfUIobLEGv9E8QOq8Y8WkWk0RQkXNrCA=;
	b=HqAj2f35YBlE3btMRfHKGFkK1Xg1xGzQ9uEhHY9dinggRviDdOOX2OL65WQtWyOz
	JMihmBVIZRj6GME5KdyznjygKxxwobgw3/qzAFK2enMy0E/eZpqkPlk+bZ4CWVEGyGP
	o2QdVhD0u3UYlcTF+QFrD1yg3jKrR2vLxsuwuvB4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645632085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VRMWw4qkIh8QfUIobLEGv9E8QOq8Y8WkWk0RQkXNrCA=;
	b=kK8/Jw+dv8t/LkAVHSx2Rh9zSd4r9TN0c4PVBIdK40I80CbDW8ewPD552AyzNvtU
	nKvaMwARXX/HQF06EScLspNn7SPu1BTOg27uaMx+B4KYxM0956SV/+l8X5ajlBZBi7s
	S9tTLiIIo3iQ/9ky2GSNOrQra6obtOyf8sqqHaPU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2750db76-c6fdd2fe-a1e5-4602-b854-7d6e71cf419c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 513a56f2eb2b448ba7acce9e2a1af49dac4fce5c6f819f1cf9537dd9edf24588
Date: Wed, 23 Feb 2022 16:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645632084
