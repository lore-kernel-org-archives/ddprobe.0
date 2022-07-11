Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6DE1FA6
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 06:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657519612;
	h=To:Subject:From:Message-Id:Date;
	bh=afB85u+n57oaIZ5qG6qvS3f+IGBVw51s43k0ic4SP5o=;
	b=SypNS1Wr/8J6LvRgGdAVqDFOGwDzFWEZ0zb1j1N6PfAPZ6uGizGrbHGI/SUxl71Z
	Qi7yNkbGpEBF+duOfz5WnxrA8vuWQmaB9jhqgkOAHndWcGSoyc1QHwSveXztsiqeGJd
	hetwxKYBZjrF5p7anl3GKt3CsSt38BX7p/f+PVxI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657519612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=afB85u+n57oaIZ5qG6qvS3f+IGBVw51s43k0ic4SP5o=;
	b=JIm6QN8wZ9RsA+XzJm21DE6pUmejN4Y4kQhQ5xQWlTbq3uRCVBqklg4UJnn4H8ML
	DCiq6tFkoH7SfX2vnS7c6zTleS0vjYlT46qgz6vV46M+wZOe99iElOGrc5rGqW7Wzq6
	1oyGUZl4/n8sMlzTfnAQzwzINoBJjXLq4yUhtb/8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ebde219b-4e8014d9-c9cc-4bc8-ac4a-1fd60d6c8e2a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 30910fac4acfb199550e09b80520b403191ce5cd8bcaabfb39f1bb12d147ed01
Date: Mon, 11 Jul 2022 06:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657519612
