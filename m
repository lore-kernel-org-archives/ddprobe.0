Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A98A65394
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 22:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647643585;
	h=To:Subject:From:Message-Id:Date;
	bh=VqWriRjM/LXoDqnGv6mqy4svgbej3QKVOM7VdkPooD8=;
	b=XDy1TgCwx4dqM4MJjGVk3YHDcaxp9dJFB9d6ewZGiWSy6+OxE/PWLpzof6NLANyj
	zo84dm5ui0cQM/txqBYi+ixSocUpUglqdeQd4njf779dylqjcbA4Etq6L5aCK7/Zw2T
	ulXEeHNbNpQltr62+lvKqqf+ua9Bye8EnbINfW6w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647643585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VqWriRjM/LXoDqnGv6mqy4svgbej3QKVOM7VdkPooD8=;
	b=ebF3iYYgSBWNFv2hwqLpzbnSVgNNTihjH2Qo6bufReY1iPhkkKLZ3tMvTTt2xuEL
	jA3QrODv/9XFNFgZ8sza+L7Cq0ECEZXC36YJwd15zKRCrNWkA3HyLxqz1OYhWegKClt
	7TktL4n9r/pwyNYB3ZoLvuPFE74sCYetPj2KtGz4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9f35e939-908ccb6c-5700-4573-adf5-49f824091530-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f5ce11c6648fecee0823cfd9c6b2783652110f833c25db5c8ba04594670258a6
Date: Fri, 18 Mar 2022 22:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647643584
