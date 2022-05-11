Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3989A17C4
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 08:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652259059;
	h=To:Subject:From:Message-Id:Date;
	bh=HHlZcFAkNMO9ZHbE/JFA+VLJuMcNl3Fmu5GYMoJ2sAs=;
	b=DOK9kHkQTWbQ7WeLA0wouEJdxLuQxVAeXpUo1uUSeKieA6zjNy3yAu2CZCfX/CEt
	DXMKNWV3iReeVWrvn8RlT5BLvFy0EV4MSVTHbb3XBx8t7WbPoB+jZAOscMcDNllDOAW
	Jjb5oy+vas0TB048FNNS64Bu9UumpH0FZKIbUCKI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652259059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HHlZcFAkNMO9ZHbE/JFA+VLJuMcNl3Fmu5GYMoJ2sAs=;
	b=knEiCxepH48wRlAzQAvCuYuTLmAQxWR9P//J1HPnTkVp8Zclx+RYQ4OqdxDoQ51B
	UVsWkpVFd9G68RYQp5f9cGFU/6ZaxzPV5b0fJCqc7tAHLBb3tWUWUwjqJPVOL/GJkY1
	f4rVp6wFeQB1AgldGxlanC/PIFBm0qrL3CelhqCY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b2507674-4f3e39cd-f0a2-4375-8d20-2f0e7818d9bd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ce4e38ae7ddcc19d905fefcd7573deb541f1fccb0372e6a4ed2d778abce2ea25
Date: Wed, 11 May 2022 08:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652259059
