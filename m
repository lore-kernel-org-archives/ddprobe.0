Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C92A3C1C
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659283252;
	h=To:Subject:From:Message-Id:Date;
	bh=cwSsEl0fyzr7nRp0YWQEZdBlxsleGBklL6BDHSPjOqs=;
	b=I+4cZfXQAdeQ/vnKlA4fXwXaIzW21LgioNvHt4NzPK2A/rnipU6N+rWmBvylKQHT
	dF8S/lEO56qTuSTCj/uj3d4oG+azLRJ3n2IQe8f59mq0MrJpEzXA+5CHrax/oWV2vwq
	k1zD0X7nWRqc39irA3Pg0vThbW86duDH9YhMsAIg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659283252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cwSsEl0fyzr7nRp0YWQEZdBlxsleGBklL6BDHSPjOqs=;
	b=CCdoS7Xr7Yu3qZMsOP2pmKe1vkT7LxdFKvarMgASwvY30nt4r0gNgLhjy90QNae4
	PkGLOPbILCNIA+7IVx8e70y64idC7xhod1v9tLb4Uohv077+XzUIkNj7Gkpu0mhkuux
	TIXe/ZYwrIfx/MNjdwWiEpOh6WeqjIKH82jKwQg8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018254fd2582-705daabf-ddce-416e-880f-f0324e0da0ca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8e3dfd110479c306619d4c6dfd3660a376a4a895466543d92454de8d63b988fc
Date: Sun, 31 Jul 2022 16:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659283252
