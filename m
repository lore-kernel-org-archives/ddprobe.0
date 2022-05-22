Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FCE317E
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 10:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653216359;
	h=To:Subject:From:Message-Id:Date;
	bh=i65DgQ9CTOJkP7Yzf/+8Ak7Lcc38rD6KvgkKSASD/W4=;
	b=TL4jyc8QhD6HuIQumJmYkVCTGEfNksJFX9JGrlTynvAef/j4hBwmQN+WLNt4XVVh
	r/fPOf32GMkRWeDqm9bbdTmm6V2bZjtH5HbDYs1tskul+HRXXFH0RNr/51RNZM4sIi9
	lSfsAKeStIiNFk0TpZnThVOqc7zCCoqW8RA6vRew=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653216359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i65DgQ9CTOJkP7Yzf/+8Ak7Lcc38rD6KvgkKSASD/W4=;
	b=BZtgWBAJzdfH2bw+8cyIKudlU5FFKRpW/qTqrHFEDX2rTnj9aw4YZAjCA+SybAvS
	e5mJt5GFOPQ167t77klCguYKU4C8Bib2JjyJkOAvwFZhGviJYgyJ6l92i1phG/bFht+
	qLw7eEv3V5kdFtHiecoHDeKczU6LcuHLKnm+yxI0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180eb5fb379-2c32d4cd-5d45-4e16-ac22-a38437c8a1fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 821a491967c6b5ebe6af02f5de8aad074a488c8857205f6f431005af2f15e72d
Date: Sun, 22 May 2022 10:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653216359
