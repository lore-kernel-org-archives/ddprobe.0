Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56E507C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 05:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656134812;
	h=To:Subject:From:Message-Id:Date;
	bh=AKXyi6gvC2IAfnAxEvxzVp1VZDYr1GIJhSx/9LtTaeU=;
	b=XfafpOv+DjhEp1R5ynxcvQCFOFQq5jjcaXsAY5oFUXiwHupwdHK3aA1Gu7jTYAlu
	ySbYtAPt8bXjy7M9QnYyzb4C9fSbuSpgOxj8KM+HYrYIJc9HSKUlxNOdRE+9tmCecqY
	YJE1NIntlPhJKOqFsxczOAFjkTIrY5m++XEqiO/k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656134812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AKXyi6gvC2IAfnAxEvxzVp1VZDYr1GIJhSx/9LtTaeU=;
	b=gq196XXNJVEtR378mY7RIxv5X6VKF7/zSTjYG4xrqnkrYzYUsEKkUPKpCw5A2RDu
	ECEUFUn0LpHa6H+2FrkVuvdibJeNs3dQBRJUh8R2gWyubTB4dIFnAJxzlAUbtqc4KHf
	YLGixBNfhXWkw1672fsxtoyXmgc6CE7UdZFObBxo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819953c283-f13f26a7-0b56-4573-928c-5062199662df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e26f53c67cdff187b66fcbce8c2f7238cd3f69735e39b5ca00e2c92b863bb13
Date: Sat, 25 Jun 2022 05:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656134812
