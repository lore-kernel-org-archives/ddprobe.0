Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 753607E
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 11:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648380598;
	h=To:Subject:From:Message-Id:Date;
	bh=UrlVWjJkFvXlQ27EKZZs4ZMJ0ah0GLx3bmNBPMqWQZA=;
	b=LzUiC+a9csi4iId/aKJgBt2QwVJ6V8NE4fyEsZzi3nP/iF+NIdIvqxOmD2XN5ZvG
	SBVxvfrW3U+7jwi8FkHHDwUCheGNs1SrKj77uiT74UaNnUkPxvcvFQe+hU9wlq66i89
	Le4ZPDFPL0KfYdRQDH+qKu5/adwRm24Ur5+0fCW4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648380598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UrlVWjJkFvXlQ27EKZZs4ZMJ0ah0GLx3bmNBPMqWQZA=;
	b=XADKyP0k9NCCZNcLHQA0+eOnIoqet/AB5fc2U40ouqHbXCnWPw6TUpN8GsrQOeSm
	Lh1bMZr6AcN/mL/Qol3bx/JkffphZ4IW+NdRN253tKxiiCI+gyI8SPaHQtUUaO2pbI4
	H17CQJUN5bxl17Gup5HiGkKoW0zrT7epniWf6/to=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcb23d819-22352baf-d857-42cb-a79e-eb1637ea7fea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8cf242d6daa32b8731d2063159c9ffc97b9624172f2c3d1933ed01c3661ee8cf
Date: Sun, 27 Mar 2022 11:29:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648380598
