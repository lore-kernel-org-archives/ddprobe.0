Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6F02816
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 23:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658099812;
	h=To:Subject:From:Message-Id:Date;
	bh=Ail4PvTksExjc8BCBrae08yqCo8gQeg/p8p+oM9zgGY=;
	b=da4/XcCU/EJKCIWCIkptDGW/XA66lYKBjsaawOfX8F8v9bFReCqavAqshMn8uNDm
	AINoGQFyCD3hEcQKd9gTh2tLJVCBJhcuZn0VhSmAfZ1R6NmaX8O4HoNnGOwDRdcodwE
	XWZHD/NiRCy32NtDchZFBxncHn6F0q9qD7p4lo4c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658099812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ail4PvTksExjc8BCBrae08yqCo8gQeg/p8p+oM9zgGY=;
	b=Xb8t+H3I3PwSmLp3DMcDYq+Mh5ozvUUj0WGuIKP1sj5ArQMdjzhaREfjQdQUsigb
	n05oUADqnmf0V0Wh4hDb2tAhQYrG7ZzeMwxzRTeSkj5W64lwyJBk0vhbiUcJ/VMManF
	/vPVfYMljY3WoxHgTQ89IAgNhRr+BAJLBGm86G0E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820e7347cd-7b12df2e-cab0-492d-8a4b-1de50ef33e78-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea22c26e37a0b053ad90419231671260e0c114c813b4102c90d86da41f142b3b
Date: Sun, 17 Jul 2022 23:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658099812
