Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB60928F0
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660825853;
	h=To:Subject:From:Message-Id:Date;
	bh=XB10Ut5DelJkl1Vc6PdJfwlFAxIEXrH2vLXWKWk2yUc=;
	b=Hl+5Np7NOOODDc7WYm3EAhh8eWPnjCvKBZ/5w/Rv5tcvlxLkqwv2YEq4dDbux9iz
	lRDdOnH74lQnB09J7FGwyg6fiAznP2XqokUAFXnLQzm4DKAKzKhl3b0TP7oxavQJNgO
	yEdAfZlQnLaeki2KjAV4/OhbSN/ek9KfQZNdo4uc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660825853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XB10Ut5DelJkl1Vc6PdJfwlFAxIEXrH2vLXWKWk2yUc=;
	b=CrU/hqz7MzNBQEMFl4wdVmNbACXLDySXQWCn5DmC51O0D9gBjD/Po2AgaMgfUG9D
	JS1ca0t8e94YZsykFt6LTgUBrYNQjs+ofR96KkOETyiv8ONnjnAqfsuG5swWYpyq3ZX
	pSgNI+qsjlm48v2rPAPZ1BVf4dZikn9mbB85fTQI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b0ef5b12-63636ed8-740d-47ec-87fc-156a4469a479-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f5880a7b2f5e8428d318305cfad3cf75f8b033474df39493c8de51f58b012516
Date: Thu, 18 Aug 2022 12:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660825852
