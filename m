Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1442B53BC
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 20:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658434012;
	h=To:Subject:From:Message-Id:Date;
	bh=qpkWdbyEVFPG/ZVH2S2/NwQaoYhzcZEW6hDTqCY744Q=;
	b=KXBi602JmXdzWzFJAeel3vQDiUeTWzyV0fqKDmL5kn4G+DYn+1WwrynrOZDqOngg
	Uh7Vu5QhXqKvZKEl1KgR1xHzX+T2r97PGCH0TQO7l4CTzV8aorc9oU/k7H2I7odtuut
	NUjWvRGcU2tP7LZOmxlsvo3zAsU9pZOR2j9iLXk8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658434012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qpkWdbyEVFPG/ZVH2S2/NwQaoYhzcZEW6hDTqCY744Q=;
	b=G+521qr80N8tlQKAeRNuhNxFaXp+CFLvRK8wPSdn7zTlI9HXwKLh3NaS6ilvDyG9
	AYN9WsDBPZ8GT1MJof0BjEbD84FLLr43nfe/UmwSjSRy4u6IVafwsLhtHM43wdacugR
	tFeZVNWHWG5QGEjesrQXYfpCWgAIdjXnAWJcOhjo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182225ec488-22854003-5bff-4529-a783-b39a5916bc24-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a94158cf3c276b067b9703abe1ac1bf615d556590a0bd5d0f6a6d904dfe42cc
Date: Thu, 21 Jul 2022 20:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658434012
