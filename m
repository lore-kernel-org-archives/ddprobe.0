Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3598E7B
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 09:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657360612;
	h=To:Subject:From:Message-Id:Date;
	bh=4c2PVLXgB461C3+z72zYYkMxCCJfkv048WcF+93LjaY=;
	b=B35kUl0o2CMODpGLI+3rvCOAHbzEQQ5TOPEIOg/bvTRT/OlZIOLHPKZ4TtnY3tCO
	NSIcMINvRnM5456pKPTSRRuyJNOVdeLr9+HLERf0+CKVAQx/INmZW8qhU4KxdRaJAol
	Lbmm9uiZFMcktWGIJIMnY6AOf9U2YdTpR0NalZfQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657360612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4c2PVLXgB461C3+z72zYYkMxCCJfkv048WcF+93LjaY=;
	b=ZgfGm7iry03sHacGl2w7hjIXr86DK4rrjgR13qRakpSLbvl0C/5PCEJUjlVvC5vI
	r9gjVf45YLm8K4bXlHcpThttonSkZzkA7bldWLydUKGiBDXOENuVH72YHEbIoTacnq/
	/sRnUOdMyh6K5VrZvPmx0+t2FcpKDzonOe7oIzhs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e263fbec-74afa22f-2118-468a-9a99-4fbc203133b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 348b4291597e63c2c3abd02249b8afe5e3be25403e51b9ff3469fffdc0804b12
Date: Sat, 9 Jul 2022 09:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657360612
