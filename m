Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D64701878
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 12:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645707385;
	h=To:Subject:From:Message-Id:Date;
	bh=8ehCMQFhLAzoLbaopFz1rUZvhsWMounPsr+CGNFWtD8=;
	b=mJmggiSG6voHF1rKlaBGZZCxNrpCyMaZErUgOWEdlRXj/QL+RLbyN9qyd6ZIq0j4
	CFYg/d/tS8RkBQIaPCQ4zZ7mtKOyQLciuv1Ol2kfEn++csUQYJ03oc/EU8oJACTQtXi
	Eu3XhlBevEZnMdDbDfUe9il+Ef8M4dFlxc66ktwU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645707385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8ehCMQFhLAzoLbaopFz1rUZvhsWMounPsr+CGNFWtD8=;
	b=TdirdqWVdDhwFHk+b8iH2FE8PIJPxZ1WyOSn98lR0f36A+un9N8Ays/Q/IqxT7fw
	mTCbhSDNyfIVESgc3TqZ2JmC7sJrdapJzX9OQsWh8WXl9dzmJGmtffAuW14cni9NgNO
	tJi54Y+qIMzEVOgU+mrW0SGy1kRRcYiNAmPkcjT8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2bcdd79b-243a2b83-9cf9-4389-9a45-8eb49927482f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 496bf7c676fdac3b2b88351fbe1be38c12d72f59c23f7856c39c5325984cb3c3
Date: Thu, 24 Feb 2022 12:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645707384
