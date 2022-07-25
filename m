Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEC617E
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 02:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658715412;
	h=To:Subject:From:Message-Id:Date;
	bh=ite/FfvjmGJLj+oZ+p5NyJLr0HMdUY6cT5OAYgixtdg=;
	b=ViIHyhrRfCV3qqi1oGCyrqUma93paaV3HVJrgdIwzWYTcJLP5DN2+fYIfgdOJFD5
	kgTYNVzj5/u7GWtLH9C1oxF6xubVEx3UnOZqnZE9n3nglqKpQJERkX8kU9PMQrJDeyA
	qiD6Iw0XSnIujnJthaBVql/UmfXIij8hVTBoqqCY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658715412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ite/FfvjmGJLj+oZ+p5NyJLr0HMdUY6cT5OAYgixtdg=;
	b=R0GR9kFnVILn5txq9BnJflVdaPQ+gjr5dHXzbXUE0WryqaUMq1SoBbaEvador9fx
	z2XgaoYNMAYt992XxjqjtvdrFXNSuvzFZqsYag7/bqQbKdTUWd8a8JhqpS/Y7i5azxQ
	XmOImKv9PWYT2hAj9uIRRK2mlyFW0o7jYaLhEzDA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018233249712-bf7af7aa-17da-4165-b85f-32ccbf6e98e0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e971ef56b9814b25d51b17c48f6e2e7e62e2af39e725a809a29d82a4d1b989aa
Date: Mon, 25 Jul 2022 02:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658715412
