Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1377A
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 00:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646094984;
	h=To:Subject:From:Message-Id:Date;
	bh=mIy4zN5Y/Oh4widJtZEIcrK6KWZk/Qk4hCPZ5vWx7fE=;
	b=cLKEpqEAiaff0WGz/dMXz5nCT2EQbq1EqJ0KVahW8Iu4P8FQ02490/CjfO8BoWUG
	TKehL5ciyfePQrlkrMrac5a0sxMhC55XBcgi1RA6ru42Dkc8W2BunqxbOxbt8LijTQh
	wMszEwZ9ZktO1IjFeYWlBSXMk5A7VHQbTxaZXx5o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646094984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mIy4zN5Y/Oh4widJtZEIcrK6KWZk/Qk4hCPZ5vWx7fE=;
	b=QKFjE3f1l8L39/sHj9gVdA23G8DGoUFpbEHsf9+BlvbTCT7tIGR/NPvHs5QfzWPL
	T411UHFcgViEd10yz3J1HebK4QNAgGsqzH7NESZdHptDh1xxjEOmcarVBv6MDEzvkES
	heyZLEEznmuSCnKuWMHuc3Q5tuDfFQs6CCE98H2g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f42e82625-4b3bbaa1-a076-4e09-96c2-a2131442ba43-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe366aca0fc15eb8c454f61faf8a00a2c1a45b396ad86d43e587db5e276284f8
Date: Tue, 1 Mar 2022 00:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646094984
