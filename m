Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181B320E3
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 03:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654745099;
	h=To:Subject:From:Message-Id:Date;
	bh=RgRJ5ICsOpehgSnuwjBnFjZIXdHyMjxojjvTkUgU8S4=;
	b=KRTUKSOoB0oGCMrMW//aJBOd0g+5ltKn6zRC6sSw15/LZEYOnxFpV2HPZgPxHq+p
	5jREjrmyt4L0Me4u8AQrupnXC55Y9fnepl2tD9rAmJ/KhpoKC+iLuhIxwKfhSfjFOla
	ztDpS7iJi4yEq3Z3x5eISuoHTRPMqVEiAv37Obyc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654745099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RgRJ5ICsOpehgSnuwjBnFjZIXdHyMjxojjvTkUgU8S4=;
	b=RAPEO1r38qlMLNSksiinPkzhjgTj585iZZgnNIlBmGkVly8Uc+w1LkZOFwxSVRD/
	qzITofPBb7791QWubYq5ZXPBXpBwslJ3LdFlBVNF1l5v/s/akI4MqkFtqgQTiwqAF68
	/oi6Z755JErkOgGDavpgX6S7sM0OHjtxLV9NRNd0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181467e6bd3-2fd3dc66-86a5-4ca1-aa58-12e6db0ca559-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa500ad1005b3685b9d7143e448b0908ed03bee705b1753d1bbb11974985be39
Date: Thu, 9 Jun 2022 03:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654745099
