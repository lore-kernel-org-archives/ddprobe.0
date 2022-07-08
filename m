Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 790067E0
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 06:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657260412;
	h=To:Subject:From:Message-Id:Date;
	bh=n/8l3pptmZZtGLODPNY7/+virfuz2kTBJhyqIVqWI0Q=;
	b=IjiW0wNYsMHduVI6e21yiJnBBUPUAOn4t2WUjkmwD46i6mV3qJ8OcRoXGPYaa0Sf
	CgrRJRt0fJCX4Lekwwo/vfLQDdEEhcSQVqBp/ODxbPLO/2htP2+NGW5Ege0/w6cIWKM
	n7WT5TtfIV4cvbuisi6IZ0yAYynqSjUL9wCNs9N4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657260412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=n/8l3pptmZZtGLODPNY7/+virfuz2kTBJhyqIVqWI0Q=;
	b=ObBzPnOdvcGwxZ/+PAO6YWzyjjH+oaXjgGi4ZBfVNCOyYRIB2ybqbhKwB7SW5v/Z
	/9dA1JuaGPsXhiQgx8G1jBan7g2bYKphrL/jIOPi4fmnEkFjQVzjo87UfoUor0U48dR
	hCr5rh2IjRGkUcJRHEinVWO6b7QQy6piZxchzR8U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dc6b0da5-6096f6ab-a3bf-40be-881e-6b5def9863fd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 14cf46892890c199ee98fcc633dbd3c34964762173975dadd59d4fb39c90b16c
Date: Fri, 8 Jul 2022 06:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657260412
