Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD111103
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 06:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654323659;
	h=To:Subject:From:Message-Id:Date;
	bh=2aNmt5pYeYYjP2U/77aVhvuOuExv+EeCYKlAX4t6agk=;
	b=OHcDd/5wbGlTMysvsqsWvQvHmUIPondIjPcFMp01B/2BniPlX9M1vyMpHnkP0ACm
	Hk0fjWIaDgR81emRc+UYKwF+FuS2ZI6q/Ht7DZ9iE0bS0ec7m4VmoiLOOBnwVrxoDbD
	3kG/U7MCdkNLzy2NCMk/JBscwCO66kRDNFoo0rZM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654323659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2aNmt5pYeYYjP2U/77aVhvuOuExv+EeCYKlAX4t6agk=;
	b=VuZzrEBMY07yXWc3rE2gNbQvFln6fVJKLsvA9xQc2t9Vxe0bWpQzQSL/TdQUSb42
	ctCAo+MAkEFRTnP+rt4groK0uTtp2Vn/7u6loJi6GQLgSVbHfEl9zFCu9uiq8/viUmH
	C1vVHmvTji6xbRw4TSyVvgsTIaon8ihvWtj69nmc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812d5fc219-3c9ca38a-a25d-4a3f-8801-cecdc6b00b17-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0a457893fdb9ef39b2f5d854c95767c2acc1bb7a3c8792895bb6622f39c648fe
Date: Sat, 4 Jun 2022 06:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654323659
