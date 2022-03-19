Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78D6918D
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 02:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647655284;
	h=To:Subject:From:Message-Id:Date;
	bh=BZSH8LYKTEO6cZpz37rmBqByzatJAXcTH3cjb8Qktts=;
	b=Mdw5e7HJyL7//CyzjsPwJ3Pldw1N4Ye5Y5IHtUCvcjGzRBFSF/iwHW43Vs82uoh4
	H9h3aYLXo9qOJ63b0+HjyHwKaXqNPzb7uOBetPrP1/KaNwlUizu4r+jdo/JfMVQvqmo
	D9PC8HDxbYfpnwc4AznRkVnABJP6M7MPKqzbsf8o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647655284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BZSH8LYKTEO6cZpz37rmBqByzatJAXcTH3cjb8Qktts=;
	b=J9yirewxkSKfV6XE05RfBXO+zU7ac03tDA5zW7Hrla3gvGr+9EjOXInTnsCtVngA
	JnPHrZkQ+vWszP70HOzwLU3O1YxHvD6GtyiGyHM0XBYrKsT3tfol51Tx161ah9mYNHl
	5X9u91zrd99+EH4nFG6jaklyNk6s5/iVcQLsJ8XQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9fe87033-7c3f78a3-bc64-42cc-83f9-640f72e03997-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5264f148366b199599418c445fcea66a47dbbefae8b5872793dfa632507b8fc5
Date: Sat, 19 Mar 2022 02:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647655284
