Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75694180
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 12:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647692185;
	h=To:Subject:From:Message-Id:Date;
	bh=pgIAP/a+c+fETE6eLFlPe8qDrzIJLQ89y7HR7VgxDZ0=;
	b=HD0caV7TdtTvM7MDXkhNn2c35bjtjm/yGOLSqajGDy3yvldRAV6oGh/8PzlID7c4
	ldVhDMSFtbwIpQXVgpZtjHCgH2uEYmA9G1Vo9qRr78gAXN6C2bRwNem2+4EBgV2sQIe
	zT9nuI0Z4K0AP4sJyXBaSVMahMC1jTyEUHMiMJws=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647692185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pgIAP/a+c+fETE6eLFlPe8qDrzIJLQ89y7HR7VgxDZ0=;
	b=UfDIlsfEQljh4oCxZUiIC8b4xMjQvm4MMtYclpYOaaevt0pf7XBTRBA0avrgDNaT
	z2G6CJ56q71ghZK20V3DIvhZ0wCVK/2/iCeIamjyNYEthiTYUahjwFOcNjvdh4Ag8R5
	6vg2dIgqpxtQt5vWuoi4mnR/nK3TlMaxNd1lz+Xk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa21b7cec-92dcce2b-9365-461f-912d-f555ab2708e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9a04e2d47177556c5dd65c9fca74f2d00e019d73d55043abfa7fabc26bccbec0
Date: Sat, 19 Mar 2022 12:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647692184
