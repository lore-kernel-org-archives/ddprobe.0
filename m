Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 988C01FA4
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 16:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651335178;
	h=To:Subject:From:Message-Id:Date;
	bh=a/qXZK8fYxNu1TFKkJ8GIkwqudCGi5n67TGPQVxbUN8=;
	b=BfwmcWiX3x/thm0bQDh1eEKciDGu4bN6qDO2VIs5KOyLJVpkgksLyf5SobVxn4Cy
	xVZm5MdQ+DiyF2IZG7CueTgBj0FU4lEaETtME7r8S0v3466jJrMvg9eTWNCFYJH/XIy
	7URLb3AIWGru90Dd8gj6LNlKykHVt/7IVXRHVp3A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651335178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a/qXZK8fYxNu1TFKkJ8GIkwqudCGi5n67TGPQVxbUN8=;
	b=QtAzCvDgrGoJslhXV7ldBRseaTz8I/TXIUnIxTHSbGbhp8GXFPHHydrVH+8xgg2R
	ssLTh/ITbzBrcj9O8j3rREGotaO5EJOxH7vwV5fDE0KjV1mB5Dd1rupha/sN+sQ0CyH
	kx8hzZHb8Bjk1Ypfz7OPJvSuInZzhOIAbMA8zTFY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807b3f282f-4ff90c88-d9c2-49b5-a1d0-e95081d9a317-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 525e64b467050399c5b0fc1ab2d75952cde7ca4559bef79eaa0285d71ced630f
Date: Sat, 30 Apr 2022 16:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651335178
