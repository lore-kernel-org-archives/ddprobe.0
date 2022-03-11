Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFBFF5EBA
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 23:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647042684;
	h=To:Subject:From:Message-Id:Date;
	bh=UqLNTouNhhIg9IbBOsT486q4bLZgx3XQ3iEcqU/bD10=;
	b=kv652roZmFpm/yP4VETRT8/r+6AkCHhEXc6PbdjpOg8Onlug5+IMkEZxxZV3wj1X
	limAiH4Tyys4YNXMsTl18SDumMxi9nHi8aJ8Z3bMTHfxf1bTfkPh6nR6vCOmPGuxA8i
	KsZQWL7BXkyalnwGA4u9Ich6TaCh/7FZVnAjUZ4Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647042684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UqLNTouNhhIg9IbBOsT486q4bLZgx3XQ3iEcqU/bD10=;
	b=cyouyTnk+cSkwOGyvmHEkkaN0wT8+426mA6zLpzEiLK2hj/0XbUt+GAa5Vny8/0z
	BlAJRCBG0Tee/P2ucdyEgKSWTWJRNGfbLlJe2eNGmwhHaUe3xhhej/P+I0o/7YsNk5W
	0KX593dglazzAPKCjEFUqhUYUf4NT8i/SE8j72VM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7b64e77c-44bcacdd-4d3d-4884-9b13-794fa13bc19c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 94bcf6e5d4079348f30f2cbfb2708b11d1f2f63c81799610f2024e7d5c4cd57e
Date: Fri, 11 Mar 2022 23:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647042684
