Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B0C37B
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 00:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647648985;
	h=To:Subject:From:Message-Id:Date;
	bh=3IYjKkrHI9wFNTC6dvrcut09zx0hfDa0szE1iCiizwo=;
	b=MWVfI3ITlUwefPsX7ulsvztl7pg551FYh39/6WA3FiHvtKk3p+jXLnIGpLuj9sdY
	yaSrCFNCbQl6uJVhEtb6puWSNVto4X2GbnYPiHdd9KqMOx9dL4uXheommXAK5zDsVOD
	oGBaYsJyvfXWSNy5ZDX7clKZ2dKn+NZyO05FlW3M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647648985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3IYjKkrHI9wFNTC6dvrcut09zx0hfDa0szE1iCiizwo=;
	b=PYFkL9ttkMamQ8nQYfw0+38dDH8Z22V9+r1nU2pjxw3X2W+y8imFUSJjhUDwMgWR
	SS6yXKaclL7IXY8gp6OMlnkXfJSafJJ9LUT9m6Z8UeAZwlxNu8IHMJoLwWkfJHVILVJ
	BYsoqP8etI0Zht1tO2iOyWG8uLs0gtx5VmIb8fZU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9f884ec7-e2fd1877-0578-4832-800b-970df15e30b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b15fde04d871bc386057a265dab627f0fab43a321a2fd7f5a845779823657b1f
Date: Sat, 19 Mar 2022 00:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647648984
