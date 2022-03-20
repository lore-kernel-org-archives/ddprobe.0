Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9074820E4
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 21:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647810984;
	h=To:Subject:From:Message-Id:Date;
	bh=g8XJIJlqftyO54yxGsPWW8uQQdRychmpZLJIXXnZ9uE=;
	b=LkPCnN6agkeqViXkL/pMzeFV15eEJzJBZWSNqSfL2X24nrm/g7kAnunGV0GR+ns9
	OUN4wFa3V8DhZlbFBzziYb898b6UQztaet7N0NT7qzGcHqySEu20/Z6ggdn08V3KcvV
	Yc2uCTCxP7dsKkGeWQHSybp81gZMSsq4kOYKvuPw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647810984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g8XJIJlqftyO54yxGsPWW8uQQdRychmpZLJIXXnZ9uE=;
	b=IVVv8GqjT9JjxdIfeYVGXYZDvxvt1A0Y4p7MESyJAcLDE0i/ItoKddJXR6oSrxyb
	/QL04+MjSVLQTzwzzplfef1ujGMGX1D3U36TQQU/Gl6foYVt0bpo7mS9Kw2sPk9iLSD
	y7RZIWX8qiqeb+zSlVWOuagt0qRsWKPCO9o7cOa0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa9303b12-74822c1c-dd01-44bf-bc09-78bddfb84a4e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 616fa97ebfbef6c9938c6441d93758ed187a6b7f0c42fc9911581ebb985296c9
Date: Sun, 20 Mar 2022 21:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647810984
