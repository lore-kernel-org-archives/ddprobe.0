Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28CD92F29
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 11:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653911699;
	h=To:Subject:From:Message-Id:Date;
	bh=s6UcfT/22eh7oAqqWNiCCk31ea5egVUBvnfzxcSHgFM=;
	b=Lgi1e3fCmLhovCcnbYyuBf5tHNnczUzoaQeYg2xCLCBNjjhhjVPrialSnYFQlbF2
	iFXwR491h/bJi4mg51Bu3z5ZB08tK8Dza1GxaZyy/6v7Wf0gotwvHALwP0q0J1NIWaD
	e9Pz4QMgS3r4i3HAAmeYBnspVYR7wLXIFgkKE3DY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653911699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s6UcfT/22eh7oAqqWNiCCk31ea5egVUBvnfzxcSHgFM=;
	b=cgw7Vfhuw6XjZfIh6mi/KcTxMaIlc1sdBJvPzGSOQd0tHKxU3Zv8sHXWg3F9s/No
	NdS5Kwm6AYsZCxoklolOl7br1J5qM1pz4riQrgpO83ln38B/Cc8JO4Ka95o9JZ79Qjm
	3drjSma6MOHRmO6CqmUhmtgkmmtfew4JdLO8dEWM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018114d1bf9a-d29638fe-c549-4b50-b8aa-444758d50872-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9aed561ce827a71bc1932fccc445b13791971c1b1378f451241b5faf30374c6a
Date: Mon, 30 May 2022 11:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653911699
