Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D0C22581
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 12:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645445484;
	h=To:Subject:From:Message-Id:Date;
	bh=01slGJexHVB8xv8EnnFQi5jcD6Wm7brD3gfJKJmj2Xg=;
	b=Zzeyq6w/9E39iBvveGq+9KAucpbBO4ttTegHQc7oJNJH2RRGb/SHUfVAFNSMYDt+
	9oUl3suJQhl0XEEIqYwPwgj8L86FfFl6VOnBnH8wxgx++fyCwDEP9L99F7a9NiRegxZ
	NVskDi7TAI+JE5/BYonnDHgyL6YDrL91RuuN0bEs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645445484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=01slGJexHVB8xv8EnnFQi5jcD6Wm7brD3gfJKJmj2Xg=;
	b=d+7ouoc6ZULBDoXHnGI7Ix4KmRCR8l0kHYC9WuDe8O85RJf2EmVxrZwTshnypHiq
	cXbC1IxOxworqMmFXP7ILfb27Ifxxi2nSlprZHwO2gzjbuqH5fviRen0KuJnhVZp9jL
	DfKk7MJ8rTTNeLPyp2qfO3nOUOk5EpFl04EoJjiw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1c3190dd-5b550f5b-9816-4177-ab71-35d15da13f0e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 020f6065410a00ffd621508f7967cab821e71f995962eba3fcc4c485389475dd
Date: Mon, 21 Feb 2022 12:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645445484
