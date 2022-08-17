Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 762B54404
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660745452;
	h=To:Subject:From:Message-Id:Date;
	bh=Oz8vG0EziWFkqVsZkXXd/jwFvXp7XjuW5UQCzh4tVoQ=;
	b=C7ACvAuq2YEoJt++ZJt7aFs/64I4rlvgQ9y9CWZ+SgWNDKGgiSTpyZKq8UlFVby9
	T10ISgbUDujSGUnFht0wNWs4gXIHQhqRAtiYPfdOo55+fJRt+RIPJCQCC1WAYAObG02
	+6gRjNfjldU/wORDWFA6wAN42Y67wl+6CAPPj8+I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660745452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Oz8vG0EziWFkqVsZkXXd/jwFvXp7XjuW5UQCzh4tVoQ=;
	b=e1tNjFyse3jdNq7MCXQHF5AGnXqIblU786iiLqJlTWmhWJKoEqvbBHOdyO6BXnW/
	sD5/TxCgryC/ouke1yD1wZQfikDPCV2KOVJpmSdxhUCSKIfZy3F6XBdjIleLy/7ImJ/
	tjZsdDUUzry7IkVJamjCL1kFVrBpSL+gJRdTvyCs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ac248c2c-84e70f09-b37a-4e99-b03d-dab55391dc94-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cbb9aa69bade71129b457f7a3ec98d08d45d8e5c6c14416dac11d4d72b0ea72e
Date: Wed, 17 Aug 2022 14:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660745452
