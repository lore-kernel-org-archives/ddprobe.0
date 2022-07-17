Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3213065C
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 05:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658036812;
	h=To:Subject:From:Message-Id:Date;
	bh=q6qhVHfIlQ0EBx1jY4yHlo0HJMIbP0vPdLhaePZmRgI=;
	b=OiSr7+21JKMh4vWfIDollyD+pV+kcGFoiyDjLsZfMbvZuMOOMeY8nuRZuhzDJ4jj
	YTIweX6RyJnDyedKizqTmDY9HNM2EG5GQ1xrjUfosKIdVYh4i51uszTKYxdUVKTjIWA
	9EvgD9KOF38HwcM3i081hp8CnqtLcEDAdkUo9XVw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658036812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q6qhVHfIlQ0EBx1jY4yHlo0HJMIbP0vPdLhaePZmRgI=;
	b=Ha3UeJa5Z4s5ccnBRp3IKELnffGSUQdZP2c/LLhLK7f0PhVxIK384cvrv4uO26IK
	kw7V6h5txrJ4yF7hHPYBMo0cleGnkNxwAeESfya2/QXaF/JjHlCucbY94/KzLGIvc8O
	HijH+Xi/9j/As1FHCXIW5ETgr/qevKu4W1XNCCZA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820ab1fa4a-acaca69a-a26c-4f6a-af36-e0dcfa35abe7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cdfb60cce3075efea75f1fe36b88099cf19d8dc486a2a57012a151559bd25e7a
Date: Sun, 17 Jul 2022 05:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658036812
