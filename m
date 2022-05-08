Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD047E
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 00:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651971418;
	h=To:Subject:From:Message-Id:Date;
	bh=JSCTPf8B1qH6gRFK01PLpSR4QnE4xN8bOGn/4rlhYJQ=;
	b=DPWYFEMdsJ99BsmlKp0aGuy8sfYU1sBRllubr45ZkozbfMOFwzXpP54jp14UNI4j
	23ztYs8UucBjpaCf+kaSkdDeQqotNNfDIUpIK/AF8wiHKeALmR41d6801tivAV5aOBl
	j1+uy0/NDwecfHaRIIlBXEXUBpfAm5O0hFf1Zibo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651971418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JSCTPf8B1qH6gRFK01PLpSR4QnE4xN8bOGn/4rlhYJQ=;
	b=ZdphntiIW4GgiS8urempRxZyg3aqYUpIRQBPsQBR7JR5NKrq50HXhvX3261yIJgs
	frqgymIfmBrWXvUL7wFfd/WeIaoPrgnESbHzoRDyNIG8835xXaHuMrq8TadcoJWrkVx
	f8ddRgnrfsPc/1ggEGgp2hiyCNoC4oZed8RFhby4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a12b68ea-ecc3924e-7fdd-4472-8cdb-ffd2c5fab751-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 30d5f82ca73c1efdec0c0edc775a8dd33849a3f3d4cb81cf3194170cc5a75b84
Date: Sun, 8 May 2022 00:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651971418
