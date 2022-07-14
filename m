Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C07B3D79
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 14:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657810612;
	h=To:Subject:From:Message-Id:Date;
	bh=07xub8Fvs+NUsBqlzQQh7qG1A/73az6c5RpWiuzPWIU=;
	b=U3dOu50QP1EM8zV23lNJkrMQvkGQSfIP+v23R5TR8QD0HVT3xyYaPC2DhiAgGoKz
	6MXPPi2sPj/sGfQ2H5QDciRzSKc5LiLHjQCFhIL4vjE/ztxm+DaUw4GJNDBIvZ+ZZqf
	KzX/dKW0nPgIMDIw0iuwle5XjhjOnBojrIIsrOjc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657810612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=07xub8Fvs+NUsBqlzQQh7qG1A/73az6c5RpWiuzPWIU=;
	b=I0eF7fd2NSNt5uU1ptlgpJk8AnHDjHXPwZsiNkDqiQAA8mVPJatevQZVU4ZN5NMS
	dxhQ46KvxvsSqt0Bz7z+4fxUI5ZPIpvlF8i422KC7prhPcK0y1ozIvKNpy3wkSAxY/E
	9frzI6+mVkKQdmVA8KhL3ZT1nvhd4sCGl8Jb3Q08=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fd36707f-aba22264-10e3-4fd2-bbee-caf6004c8945-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e1895b52e835447c26a9683c09630c982f950d4ab35d5547a849f52d80ef06f4
Date: Thu, 14 Jul 2022 14:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657810612
