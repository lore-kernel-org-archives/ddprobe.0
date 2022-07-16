Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECAB86674
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 19:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657999012;
	h=To:Subject:From:Message-Id:Date;
	bh=0pVxhBXgeLTJpvn8w81aMc4Ko6pIYg/bZEQNqYhNzHc=;
	b=YmLf4qyPEERJYrPcD2AnuRHIo6hD15YbEDI4KtvFKs1qziaol+cLKPGEq8IOUEm7
	jcDOjKSjLEnRD61ZvIVLZzRAMnLPyAQF6KlAcwYJ8lGhcs62C6kmDpwXWunBHE/gCm9
	VRte1oTamDGZF8UCKad0tauOPGfD3j57jOjTvK5I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657999012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0pVxhBXgeLTJpvn8w81aMc4Ko6pIYg/bZEQNqYhNzHc=;
	b=Jn2iQ/cc46o71B4gHRNwZuiO4dt835Er8DTXUq0lxFIck8XZwZDPVonjWI3VhrHa
	mgxIYPoPKiFasDnEBVAmN/84JN2YZEW7TfTaorti0G+Kk6yPnNh/xWCa25gFMZZjZBh
	qccDW5fgoCyj5H/oBmjO2y5H++c/eX6JlnOUXXg4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182087131e3-95b35ce5-804a-4cf2-b949-f0d5f72149e0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 37a8536637c88bdbffec885b5e9675b0a8ab33823bf43cef71f82096f2c960dc
Date: Sat, 16 Jul 2022 19:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657999012
