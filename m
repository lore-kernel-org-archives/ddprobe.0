Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D297635
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 02:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657247812;
	h=To:Subject:From:Message-Id:Date;
	bh=M3xLLyCOlhey1enMujfIslwuGoaubo6vGuQ9wVtVKsk=;
	b=hkFmXW/ZTwk9bf2hli5Q6Ma1I0lzbvwinnuvO9N9pel4/fh9Lm6LgFh1pPKiktMD
	tVqaBCHe4joXo8WMop2liVitfp/2BPR9vsqkLXPdwqmNnzi4ncQ6XtvuJNS+rnzjgLc
	vMX+o2e9DdvcjzkGI1kb5XP7IKJhYl2HjgfnDr0A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657247812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=M3xLLyCOlhey1enMujfIslwuGoaubo6vGuQ9wVtVKsk=;
	b=HYTWL2u7SOa/Y0qClD/8Q5ao2ArdRQ22hlqWjHvl01Awd6MvH/+dt5Zogxn+gdNf
	s1euS9CaBKa2RF968V31qiIL9uP1YvKRkLr5nTErQhiouZPjO4/+1/YDJzYZ6o3lwsG
	6zwdbUjx6o55gGqJ5HYPpCoONMOq4wv3Cl4y2GAY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dbaacad0-667c6b84-9f05-4dcb-a418-3cb1b7fd6317-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a9c4e7d6cb22b25a08fd663fbfda775a319b8039c72b41b0e39c762d30ce482a
Date: Fri, 8 Jul 2022 02:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657247812
