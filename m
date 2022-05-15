Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 981E32F5F
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 22:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652654400;
	h=To:Subject:From:Message-Id:Date;
	bh=56su6Wmdnk/y7DNNK6jyeXNurUt8uapEG+rZJT+XMyE=;
	b=BHHVqWXyU8IXQ/CYm22+u7FeNJxE+E1eLptUImZQDWKE9nAVhXRDiN4Xm31yVKA3
	ICovEwtAt+bF7t5keAb+7J8+kGljIyjpXisoT3lE4YuZbNpUnUknMtkIYKIAeNjPb0g
	dDz99wtKx+p1BYmY/XY3jZtwjgbXUk5nrKinFJSc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652654400;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=56su6Wmdnk/y7DNNK6jyeXNurUt8uapEG+rZJT+XMyE=;
	b=A0Y8KxQhjsx0/vvkJ25LlXrVcI67KV4qqW96H1BBQz54XgQ2DGiVBjFgFH7hVSd/
	cvMPfVwNG3iLJFpRoVM5zBA9uyh+d3i3xcuZWyayI18JEk3nAjfkZ2Z2qF9kGQNhPj4
	vDpO+xYTHB/+cp/002fWSKcpRVjnuPeHMbZ8wYgQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c9e0df72-7de0043d-44c6-4f46-a5be-b7ceea5d92af-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64a8661da81a81d08b2b3a795b10e295f086e3988e02eee9a0e7ae15de997cc6
Date: Sun, 15 May 2022 22:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652654399
