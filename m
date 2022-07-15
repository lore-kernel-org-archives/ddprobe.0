Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25CFE4C9A
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 22:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657924012;
	h=To:Subject:From:Message-Id:Date;
	bh=UbYA5mcxcF6566M1lWpW8TpZ/tSrIRDM24pQDLsxmoo=;
	b=f5l6M8pJ+oj/yj6hgwjj3n2g2RLFay41w2aPTWJ2Q5GV4YsgXcvMR19Xa365WOLl
	XmedwIQcRDb0r1aoonfm5WNUeoVvrx+Qu24HBQ4GjceyhA36gvXobOBNbAl2kHfuq5P
	bMtxkWgTtzgAQjbNpIah8WaGQDumz0t/CFUL38uc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657924012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UbYA5mcxcF6566M1lWpW8TpZ/tSrIRDM24pQDLsxmoo=;
	b=iZXpOF2QVYNPi4YgDiYky5nBjkicI85a0D9HoMcXn4sPD69mVZ93qoR/ha5xEYjv
	MxNP2/mIhGWBEys1M2V9d3K5LY49B+8r4ZIzc7huR+HNzxZIP9PJZDzbr7aKRHxQSmf
	koJ0nxOR6Jm3WaJWQ95FuZrj+LQTcoeD1yg0vRFM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018203f8c8fb-ef43eaea-27c8-46db-9441-f3396f85f350-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 44818581db284b1b9360a5b925c7145524ff351e5e8e4792173b9396e536ff12
Date: Fri, 15 Jul 2022 22:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657924012
