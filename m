Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C4253D79
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 09:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647508585;
	h=To:Subject:From:Message-Id:Date;
	bh=y+y7/vS++0BXvu00r8iA4kYn4kopH1iM4dNQthWv30Q=;
	b=IpnBgiLKUzuPV+GCVwZKbIr2AeX0yKt6XbEOGDQbIGuaCSRbEVpRNb2hd7+aIste
	TaaJoUTqesBjHmken1wkMWT65SBk6poxIz98IcFG515tpZ8nFpfsSO6re/oFYmZ0AUj
	s8NXNC8lrnC2KFSupOAJ9QtjlC6vfQrW66c8wrck=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647508585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y+y7/vS++0BXvu00r8iA4kYn4kopH1iM4dNQthWv30Q=;
	b=GaNv84uPOfL1QehHHxOtlSNfE+g1qpC8VOqUbU0WzrVJ0m8z8ls0jHODAaDuNfqA
	CI3wh0EnvI3YuEm0Iag7b2pkp/hYa0G1AhC/fBTwSqMmASNsJsfpsE7knvMnFlV2c7b
	gOF09uFjF+zhN2OHEb7zpJBhkqd+xADyrWfPwZ9c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9729f935-55f4fbae-a12c-4f56-9a8d-be74f0a4d325-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bb40055c97d3b958cd2f1c8625191be7e4814d45bd08ccc1d543944bd3b6193b
Date: Thu, 17 Mar 2022 09:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647508584
