Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E04362
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 13:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650200458;
	h=To:Subject:From:Message-Id:Date;
	bh=QEyOBAJ76Tr3yM8NdA/BqzQsogxZQWDqQRFmBUP5q4U=;
	b=STfA/M36SQ8VtkSEOzY3j3Eq/R0kZtfzP4agtyyxlkXtbZ7L3NVTed8E/niomEXI
	YlO30Ys0LyFFQPWSoliiAYYqEuZDXXLN62ckritiR5IjYM8CgD5KBysM9Rk7QINtKS9
	M5NCDuz1iKVv32MJlD3Bl7rlAbpLeYLDU9VBOd88=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650200458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QEyOBAJ76Tr3yM8NdA/BqzQsogxZQWDqQRFmBUP5q4U=;
	b=cTCHpGHl8zFqjdDd5VqNC+n2NVkRv91isamqFrjek1YQ/WJaZ/bFGqciKF9vx/aX
	bzR5TkBdZNc4M5xe8kS1IQUSYjZAQ4I9i7NZdRL/6T/waWRbar5txce33LMuyJZ439f
	XJh+ZnhE+E4mjB+fCVE5nlntow/Nbq1vYXe6GGpI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180379cb41f-56269e9f-fa16-4659-a13b-3a41ffd406fa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e5f91fa61fb7137a320ee88c22cd33b88a1633a1a5286271e6b332865391cc97
Date: Sun, 17 Apr 2022 13:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650200458
