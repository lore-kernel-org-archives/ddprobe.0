Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FD324A3C
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660433452;
	h=To:Subject:From:Message-Id:Date;
	bh=dK8KyH5K4htRkfdrZMCI4IxtcH7nTP4UNftcLL3PWZA=;
	b=iWpYtzidxZOwSmyANkBBGkZ5/AM51erJf7/C0b3PHQjij4dt1Ps2zXkJbfyb9vQ9
	SDldyh5rzG82q0sac5VhMVf/pefAk2o1uJSB4/WXjU4b5+G57akLuK3P6xzT3eYhiq3
	us4YctSrQRtYoHUUU9bN7vEYaxter9EmWQtku+04=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660433452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dK8KyH5K4htRkfdrZMCI4IxtcH7nTP4UNftcLL3PWZA=;
	b=cMVmjaPQJ9F4FEB2/7vsstnLpjwBP2dVPdQ8rADdKjjLp2+lJDiztiFnmPLXiY8Y
	9p6gHzrE61/ZffgSoLnlGDxxII96PsnEUnEppZCCjwtDRGxPweX4aYroXtl96w02m9n
	1bS1Kmj/4cWKVacxOzuNbISWuol2Fx1QBh1JSkzQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182998bce32-22b7f04e-d674-4d59-b1e4-98f74a2bceab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cc58e162983ad9a07453fb721deb157213dd98d55578caf7c41106ddc98673fe
Date: Sat, 13 Aug 2022 23:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660433452
