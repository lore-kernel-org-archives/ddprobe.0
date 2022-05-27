Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192431841
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 01:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653615299;
	h=To:Subject:From:Message-Id:Date;
	bh=VwX7F+hftprYuJK7gHk7W1hgoUIFQNU+7MF8xaOB+Lc=;
	b=FzpMFpSo2bdDwpwLp1mfZofc07L+SxWnJhRHZML7zbUqoWKLBrwhaL6wQxsZU14E
	0WCLVGpKcoTzSwfhs4jtC0Qug4T9dxqFWGKXiXxKaBC/usQYbtGPljNuEE0aLut4TJw
	eGisYV7tb2Qcu9lsb6UyRsSAqa6DLXa7H+9PE6AA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653615299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VwX7F+hftprYuJK7gHk7W1hgoUIFQNU+7MF8xaOB+Lc=;
	b=RzN21aaPMsMed6wmTPvVA9g/JEBlycuIFdHjNXT4QuTl0LahpMzOv3Wg4DJ4i8wc
	2ikmwBkPIf1IvAeU/EVAIgjmJnAjhlQDC+ioY4EWn4PDB9gaMEYMzTVJx7ttFAe3b8y
	M/AuNwi6/dI4MRVAzUQ7AeH9nvL0V+I/LdDWY6/E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018103270ae8-70c756f6-537b-48e7-a80d-5118b0375048-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e1f2a149e44c13fee8d6e4f4d40b59d1a5e81a938961c95cd310564e7c7efe32
Date: Fri, 27 May 2022 01:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653615299
