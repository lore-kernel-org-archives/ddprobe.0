Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59733290E
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659732052;
	h=To:Subject:From:Message-Id:Date;
	bh=3M2C+krSa/5c+5WHn8cDJTKI+cWcIxpWPEbigmq10Nw=;
	b=YRcpGHxHYBGqrTjNOKGE04Qa8yJVzo/jS/55yxs2AGOIhh87L/XvAHLjKxj5lMjO
	js0HvtZc6b+LQPYtATRAxRjyEuZAMLM/C0zZpT+KYFq9wMuN0ZsnY4mXpOGHjZYhyzP
	bGlSe+26Obb6KR014n76hrzFjDMnz/b697BNTTWs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659732052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3M2C+krSa/5c+5WHn8cDJTKI+cWcIxpWPEbigmq10Nw=;
	b=Mqd/jWfTBMBJ7d5HcXYg8Anir9k2cM2ClheR4GKDOLB9r7ifga/9Xa3OGjd8JkM+
	xGOVFIIvQgA2XTyqBnB5M9Cxy/lgJaqGOvHmZeRY5tKKeLYIKPzfXkdKPakquo++bDZ
	J8khoWAyVdjp6+JXdjlLwO6VINUQAhYAD75aWCMs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826fbd4a81-b6da41ae-bcc4-4671-8bb5-6f7634de27fb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a2831eccbad8c5ba8c8c26508836587584cd4740c784459153f0f7e113102014
Date: Fri, 5 Aug 2022 20:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659732052
