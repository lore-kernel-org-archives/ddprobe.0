Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD1EA7A
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 18:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652468219;
	h=To:Subject:From:Message-Id:Date;
	bh=jiRJD4XjQMr0qXWkXjGO5FQ5SOJEgHmVHSxD02Ozg1M=;
	b=Y5W7VKrNF6XYke40fpWxYDg/i3c3LKZzurxJaUm9CFHpWc8qXyZHYoL6bOwTc+qj
	9Egz/Pv/8UFf/moedB81rzt4YAu2ffQyAUnwUpDUPx+xPRCj/M8sdijbDlbVZUx89MA
	IDCfe2Shu8H6ZUjjCerYt5zg5nLoH+6J3z+G354k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652468219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jiRJD4XjQMr0qXWkXjGO5FQ5SOJEgHmVHSxD02Ozg1M=;
	b=aSjVRPk2eCbxHyh0j+abOhJKOqWkhBvUxjFgEU7O4mzIf0qvvfzlJG3Ly1v0CgxW
	eCIlkXMozF6KyPfY3wP4plQPC6dBpXrjiOEsnY0fRKR1Z/0HOx+jdQv0cd/SdmpiBcw
	XkmWCSCo7dAcTyYQviCjPSh9uJFpW61KBwwU+SFs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bec7fdab-2015cfbc-1a73-4483-a344-0477b3f863e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0a237d12fcf8f4b6d09cc365d283709812e3a1094eaa08594d310dd0666dbf36
Date: Fri, 13 May 2022 18:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652468219
