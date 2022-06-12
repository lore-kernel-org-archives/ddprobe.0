Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8B57C
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 18:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655057819;
	h=To:Subject:From:Message-Id:Date;
	bh=O88mrxpcX977RJdQnc5eSDn8nuPGSLqBx0mFgwYv+Zo=;
	b=WIpsgprUyOsSUyj560RlTObvpGiusGdK+LkI5xeHL4S1kVFkGyahq3vdp21a2gVz
	eDcdpw+xB4ogcb48g+k7OinW1/OcTie2LJUI/WZVc73SThj+KuKFEce629IKSPujOdS
	/x62q46bkjvxPet+RNT8OhARBQWmKIG4OsfgkcdI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655057819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O88mrxpcX977RJdQnc5eSDn8nuPGSLqBx0mFgwYv+Zo=;
	b=YhHcX3M4SeFBTRKoj96nuZKuP+k09Wk229mT7+qA6oji2n8x0NZn6t+FKKdDTFZn
	bVApirS8I4TIJBg9eIq7IxXs5U6phd4rraQkatiqPK2h/Hp55tRoZmfwUvnxjrVBd/+
	LKUSQ1999eG3M57qBh4cFGo8uF+edL6NoTH7v0Wg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815922265d-05362aae-68d3-4101-a7e4-ea23cbd7ff41-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6899cf322e5f35afe019039a035f034da761387c386310ac18f72dd381c808bb
Date: Sun, 12 Jun 2022 18:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655057819
