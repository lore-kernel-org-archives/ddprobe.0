Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96CFE7E
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 05:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648186018;
	h=To:Subject:From:Message-Id:Date;
	bh=qpQEe8RleeHa6kYNvXs8O57ZfKAMEkTbjMQEBNnb4vo=;
	b=Xu+o9XPNRPALf/TLMXDNz/pz9953PQxezUkROgNysmXLJZfcRdEaaTGd7jULBfU7
	IX5MEzV5FiESlNAszNA2sl0wdFG7X+eq1wRmE0nBnGIS2lyY5wuAnusUCgzNQztR5Ef
	yeMfGLqz8pZc4WLfpE5n4AbdSliuSjVaCckcxpWM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648186018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qpQEe8RleeHa6kYNvXs8O57ZfKAMEkTbjMQEBNnb4vo=;
	b=VtIe1tt3JfHRsUphJxeWF8jk6Bif35RFgHvvgtSczC+cAXgMzHiXAVn6n6HyafkT
	4VgIRxzCiA0Tkn3zSHOxHxZsiEDwyrEp4RYOqx4Z8LgNRFI4ImISvGg9NzgMMoXR+p/
	wOXfg1iJcnAgQdCAT6LpNYtnBvYOCRIAi7NHk+ZU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbf8ac9fe-23072df9-0ab6-4ccd-91d0-2e04b80f1827-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d334f299f0e3630405d4a71c4b71c3bcd17dd362fe3f61f91a7a983e207ac8fc
Date: Fri, 25 Mar 2022 05:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648186018
