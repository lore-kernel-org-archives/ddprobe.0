Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237D7290B
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 10:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657881412;
	h=To:Subject:From:Message-Id:Date;
	bh=N14mmuZ22xu2kuZpoadg/npDOti48urjBnLqF4RO02g=;
	b=BG03S9jjAzhd71AMxSAn4TDae0NVVoL0/d6FCN9CwgH/iyqTJKbzFtz29gGwFA03
	Q8nag1prNgirvinQceiM2KIt1PU3Nk5eQWrPkdxses6uWLdyJHOeAOgLYkVocizx6nF
	zr73fjEO7RpRJlpEfp4wjht/fdAXSFpmRsRSAQvM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657881412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N14mmuZ22xu2kuZpoadg/npDOti48urjBnLqF4RO02g=;
	b=iOYep8OZqrgKPvGgKwW1jLdAa7VkQNA8gloU2ArzwKRuyW9Mi1+T6X4tGL/f+uty
	iVPqkNhQ1cZhMHXEPGDQUri4MGdfC0XECN7xDSc2ULtPvPCrli8iBKVheEes3GgrInL
	j1HE3om6lv1jTrTNzmGM/a7HopjaRckRE8KA7DgE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182016ec2da-8268dc04-f1ee-4e94-96da-0154e8329b4b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a845f66f65d51a810f9075adf5f52f832ca8ba757b7fd011e00c763e6a328629
Date: Fri, 15 Jul 2022 10:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657881412
