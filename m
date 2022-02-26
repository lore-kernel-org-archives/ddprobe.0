Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B7328E1
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 15:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645888284;
	h=To:Subject:From:Message-Id:Date;
	bh=QLSZR8Y4/Ou1KDsE9RUuale+8P0PFlbau6y+/4A7I4g=;
	b=ciHnXcxxkZ4vfaaLPI7jFqaoJYYjOWqGwptCFJKlKEwMCk7QTksVd+qdGfmc7uyC
	0Njf3QogZzXUBGPKOBPLDq58W39BfjfhJSGznrz0hoBKVSh0bE0Ynj8bYTgYp6xaP5i
	RY1HfucEgbY4uF5fgHUNyQ+48HRcpgHftzGhoeLA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645888284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QLSZR8Y4/Ou1KDsE9RUuale+8P0PFlbau6y+/4A7I4g=;
	b=FDj8WJzxCzqT7ssmra7ZK4xnGu3jZIQi9Z9fdcHZI6/eaNkG1lptoieHfv0RPxZk
	LbjJnWbg4RLJfD+cOjggFrf1rHt+htlMWgHDjMMPJ/g7A25qxDX9wZsNe09MFoF7sGI
	6l52G9UXq0TezfK+gzapPAiCVjhaTAKOfgh28MIM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3696283a-832a8207-943d-493f-bbdd-db30e9cc9e86-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 34cbda78e390d919c321d962d868f3e18657ab1079ad3456bdbbe6d050c5eab6
Date: Sat, 26 Feb 2022 15:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645888284
