Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7B923CA
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 10:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656067012;
	h=To:Subject:From:Message-Id:Date;
	bh=pkf0HfyTJ1pWxXbjhccgwnlpOa6bQ4qPRi3KMD0s1gw=;
	b=SJmbRhCwfrcyFl6IYeTSLm8wLAT3lR4gi9wXzLGaGnYrZX4wMmEBSPDrI6gHGwxs
	82OzY8rO1WFfdXdU1WFynqnoTSP5DWmbyVohnOpppDhDuxl8VsNEeFc9tBGuYEbF5XR
	EUaemdvjEyt3lfhpBb3hiqhNvRdijU6ttGaGEdB0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656067012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pkf0HfyTJ1pWxXbjhccgwnlpOa6bQ4qPRi3KMD0s1gw=;
	b=TJXWDnUEe5HtbZM669HDEbGzJK77iuw+X1LsO+uoGZtQRCM62lqhvFOUPwvHPaz9
	z23u03e50CMxLGzjVSQtu4pJDU1Y/TeR0NhGoC/QBEeuN1JfWTW18JHnzc8bVzNjBhq
	72dMIl8KelqsDsW0+YZGHMLF3Gps+N3P1yjLr+LE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819549369c-cd6ff2e2-4d24-4f8b-af43-4df76568e357-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 29c7f25cf1be125981af78091ce4ac43fe86771a129f4566f5379396ca321492
Date: Fri, 24 Jun 2022 10:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656067012
