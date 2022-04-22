Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F304E2901
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 15:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650640258;
	h=To:Subject:From:Message-Id:Date;
	bh=CD+uxQpqZ2AwIWvr2VA1GLpLwW9oBOEXlRaVu0TlrNQ=;
	b=Q+zz9yM2y0zoi9ytbT8xk2bcngOT4IayitXd7RmDPk/YUGD4/bNvdRY+bmOS/Tm9
	QzPuSPQl48h9fSMYKhMGbR2FKUbf9WPwFFEXduK0JN566+cjf16OaNNmKSBV3mEvS9w
	Id+uNaodsRIuAWtPr2kbBQFRSycfAg5t8V5tRIlk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650640258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CD+uxQpqZ2AwIWvr2VA1GLpLwW9oBOEXlRaVu0TlrNQ=;
	b=OevV+4da874UScmE+ikoOMvWRd9DVyTUFTEureRkZzVNcPUSo48tTzHOuQfS2onw
	1z3msACgW1aC3E5hbDAQiK/+DeXyM5XU3BMJf2wG90QvJAgVrgErCWnZslkNmEjXMsP
	x+h8G1YAgKUSYks+84UvYl6InioqTTbUdrRJEfvw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018051d384be-767cce97-ce05-4936-849a-2a9df4ad4f8d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ba1755e634d1a03b28924d50e3f4a985be3d6d2376ab3d0b513d574c4f33ad54
Date: Fri, 22 Apr 2022 15:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650640258
