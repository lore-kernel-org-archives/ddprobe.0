Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FC0E7F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659433852;
	h=To:Subject:From:Message-Id:Date;
	bh=JqEqQg4ATgRWT+eNehBeeal3cXDrE5+HD62h8zGXIKo=;
	b=bgg6GQn3v051WT3uuxhOS8Z/RtUoQiPqV7XqimXxCAHO8qWS0G8n5AVZe4XjTRO+
	9C69uyz1h/rgHJVheorPQetaxSUIi9G6wkMQIwh8i2WPOCXYpp0mRJwJvPLReJwl5hJ
	0QtkxASs7JX6cz66qqK5+qm7qq4TaofAjjFNeOm0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659433852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JqEqQg4ATgRWT+eNehBeeal3cXDrE5+HD62h8zGXIKo=;
	b=dzfnjNYkd9Ez67U+1x0q/bn5XfKeefungkG3wFE/PHa+t7LCfrSttpw4ecgActSL
	IgoOpSzNXKIBuGmvHAMmsWIEaAmhzfz5cTUC6py0575TpbAi34vDaBTYx/rvVX8Y69z
	E/apWbxGBSLtolT1vNxd3h3sc9NUo2WrIB9W3x6Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825df71e85-d67c6283-dcd2-481a-9c72-624abdf4f3c1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5dd433eed431132d860276d03e4fb11b8414910894e0f161f65a658ce66b1224
Date: Tue, 2 Aug 2022 09:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659433852
