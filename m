Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DFD76138
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660980052;
	h=To:Subject:From:Message-Id:Date;
	bh=Dg9tVExV/rxHcNrJjBt4q3TdoAw6eFXSHbzXDD8HsyY=;
	b=Oyj3azJmJDLWnZmIMHdZE7OYSjf5OQaiMQqBS4WmBzbHKmbCJ0kx4d0YdeKW3OZj
	/mYhF2h0BQQzsAdsU916611Rv2ESDWBBYC2gkU9Pa/tQO35A1isfTGRy7uFkOT/V8Hh
	f+9hw9LkFWX5ZqHRondYJBMZCFNKa9ipc7yfxHjo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660980052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Dg9tVExV/rxHcNrJjBt4q3TdoAw6eFXSHbzXDD8HsyY=;
	b=jYA4xhOA5Opca6CkpeJxYRyCfQBZzCQkbstNEiQZe7GbuURVKGiBEYcujtqAqXFn
	myoaUA9O0nuHNRUUbx0zd9sYVUYnCgDCK1QHTNPd3JQPrOC7jGAlVuy9BBTHd60Vdv9
	HVWkNrV5CWL9Lu2ajCA5RQOBG95gv55VLwiL5hqU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ba20422e-fd240aa0-0977-4a47-b067-285f85daa0b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec4cf1019d405df06293877a4f987f59c390159444d7cc0ecffaf3619b664c7a
Date: Sat, 20 Aug 2022 07:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660980052
