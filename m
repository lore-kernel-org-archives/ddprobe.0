Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3B35A23
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660487453;
	h=To:Subject:From:Message-Id:Date;
	bh=VHLBcIRkkSmMtvdCkprUEicyhCro4H/AAUqVWs7q/Oc=;
	b=M2bGb0bFzJzSC4J1IRfa8B4+XB76LtBXi0pzv3HnRSGTVIN+oOhHbzgGseHJYzpT
	Vgnx4boGcxL3sXWfn0mUThwHR5XnUR+swN4fIytuvkMo6M4gTTRKif90H8/2xOSVoIp
	Co1nqgrPa+LAcoQY2T68chA1WJjr5HApYWr/p6/A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660487453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VHLBcIRkkSmMtvdCkprUEicyhCro4H/AAUqVWs7q/Oc=;
	b=ZGoQjruuX7wispfwOsvBqM2UvMTvDCSiRujD23L/fOBDVmxhuSOHjY4RrZsV/nzw
	4IT81FlY3ewobE0tvDomyROiFzTfa2TlWmB83qQxtHoDv1f/c0r71NlRGOQLldmZ6rm
	Rst3ZTxGQJouI7q2KpghhKCeztNpwr57Mh3xK3b0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829cc3c7ad-35c5e38a-da67-463b-8ab4-93eb7aa17190-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 365a6ba7f95be5007cee218d2e1ebd245dee10c5b400dd27914d95b7c710a29b
Date: Sun, 14 Aug 2022 14:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660487452
