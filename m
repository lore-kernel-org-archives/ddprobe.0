Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211037B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 19:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655580779;
	h=To:Subject:From:Message-Id:Date;
	bh=G1WZ2H9T/qTVCoYUJy00Xt2OsoJCucXwrZZy93B2wbI=;
	b=Kl3/I7LxWhbszxx1pCd1jMxyHlDCD6Uk0CVgK4En/7uxb7Ng+dUkgWT3Y7tp67v9
	E0olG0+E4iJ0gnNBTgizURhEgUbkY1DPQ83PnOci2J5Eq+xkU/Rh77iKfFPTJ2RpOP4
	5aVHYjMHjaUEIkQtdelNyn+1eaoYREKXC4IRM2SM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655580779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G1WZ2H9T/qTVCoYUJy00Xt2OsoJCucXwrZZy93B2wbI=;
	b=OvmT07uy7Tmd9CROnxLzwSPrVBrnTHXDizE1rvcoESjGXKk8WAEJ1ojtPM+7cFFo
	9rGxRQh2VXLlyNolYtucRHmEjJJXbNmk3IddsjZOEl45unwPjaXePs+MM3UgHyW5qiu
	TS9eiOsOFY+4o7M9qIhKEYhFEiMFiiR1vfC4LwiU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181784de30c-28f62846-2e11-4cb7-8cf3-cfd52508f56a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 41bad505f4a727febe0b2a855bc2fb5f43f124e1a00f0adb2207afb9992f7e14
Date: Sat, 18 Jun 2022 19:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655580778
