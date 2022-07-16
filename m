Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14BFA7A
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 23:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658015812;
	h=To:Subject:From:Message-Id:Date;
	bh=yUQTgO8EYaD8Tc74YhfQAeyF+/xLxNaXu2IEC3Aofeg=;
	b=F/WL3aS31zjdI+xClw2ircvr1/eETTWoV7lwfLl/zP0cCd2DmE63BKUa+bYlnjTP
	pLoZuuhLuinT+1ogyB0dVRfHjMUh0sdn2CyGewnFIjXdsahMT0p6GhoVo9b94k/K0tA
	uA9Ziywyw7oc4b0ktqOMIMkc33Hjxj4jr6Zd+B3E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658015812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yUQTgO8EYaD8Tc74YhfQAeyF+/xLxNaXu2IEC3Aofeg=;
	b=UcC3yzms++ZAOan6x/6JECF6XvCfh/3AqUKl4IQkO2WVjiD1Yxn/wa6Iyybly6+X
	qQaaR++oL966EP/5AGUrzwi/S1Nb89SsqkIwSzQmMueSYbOe75GOtRoZYIslStZua/9
	H/6fScaRokNWBy9TjVM85YK16QxaKHq5WWglBQLk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018209718ad1-cef37b22-d6e9-4775-9509-10b56951345a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9352015acc540d9379851604911b5546385c6b010eb06d294ce8ba201c614e7c
Date: Sat, 16 Jul 2022 23:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658015812
