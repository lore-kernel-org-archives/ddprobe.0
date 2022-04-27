Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 107C37E3
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 06:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651040818;
	h=To:Subject:From:Message-Id:Date;
	bh=iGrMYerATvDDdrCusLZ7xuoNiqAdxEozmwUrQGc5pxw=;
	b=abTNIaVMJ4d3XcjDRxym1A2xHGA6qfcbHaL5rZKJPuTkbMp8Ha82FrOX/tNRkwp/
	iO1pIqsdD85rAv6x/DTQMgU/uZeesABF13q1LL0+FnUfFbbdKkNdNFGPAwgHKQsTFKg
	S8tKJMEceck4s0Y9wY86irI7b6IAZPFlIdd/VZew=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651040818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iGrMYerATvDDdrCusLZ7xuoNiqAdxEozmwUrQGc5pxw=;
	b=D/m6y06nJJ3OD5KLpSF2W6ojPTOuZiW9bRe6Ib4RNFHQOHjWr3PrqC7lXNjQR9rL
	fZ7E9AiB4v8toKN5Q2wU10ds6jrhj4wwUOwAu9gSnpl0Kcgyeo8Kn4M/S443EfeG/Oh
	zNoXqgjSOra2r4B6DjybeFutAtVTXv3zLZRLyeag=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018069b394c1-992178f1-3d1a-42f6-ba0a-de919e650519-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 21c00813cf2dc719d038d50fe43eb8936b196e534d8947faf46950ead3dca092
Date: Wed, 27 Apr 2022 06:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651040818
