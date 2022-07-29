Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 789627A
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659053453;
	h=To:Subject:From:Message-Id:Date;
	bh=kMltxuQ1RqGykgK+C6dnnxAq+maBU5tqK9oR33wcMFg=;
	b=TklGEQ4M+phSsToKcgM67hsaX7VjGBLH+Rm36RX0Ni5R23TA7SU8Elua7aIIVv8b
	/LaMXQeIMQgq77YGY/08SlEWJDBBksatC4/9QWNq6B1KEslWFivU6MwSfMN3LYPzYk+
	XD0OHyYt1/dmCrYgnOBonoYNsuPg/HWMjLrDPtGE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659053453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kMltxuQ1RqGykgK+C6dnnxAq+maBU5tqK9oR33wcMFg=;
	b=PnHNiR5tb9rYun7FWNipnYX4atsM3s+vtb4ADxhutrsKpc9LWkjlSMmqIWAmXzVb
	hweSPh5POAwDiyddYBSFFJzXIHC/akAPMY/Y/qnPfJfuUAlgVXpUh6tzgKu2i6ya+D3
	ENs7DjVq0w5WtTDdDJvqnj27qdybVBePK89aaDnU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182474aad60-3f2e45aa-2e44-4d14-883d-f9f64915d090-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d78ebc15f0f7f4c91a514eb11f6d0ec26f88c24a8ed20915411f8902c05dee95
Date: Fri, 29 Jul 2022 00:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659053452
