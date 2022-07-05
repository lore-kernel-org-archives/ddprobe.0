Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1585F6033
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 23:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657064212;
	h=To:Subject:From:Message-Id:Date;
	bh=KSTQZpg3V8BH0d24SldoiSfRhnb0RzDoE0ehbcqfxx4=;
	b=lAoEydvg8O5LUeEj1z1t8/fhzcubhfJdUTcCRFxE4A9x/uMgS0oeyosbKTVjWvMO
	+TwSv/FqRWg7Re1QuKj64BuV1WFrtSAfQ6yrIFN9aUK6/3+wbxSmiQIUaYh7fNbFGs6
	8yW5Zlt6Bi9MA5IwXGQ9yDZcEq80NKZEFbp6Lkng=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657064212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KSTQZpg3V8BH0d24SldoiSfRhnb0RzDoE0ehbcqfxx4=;
	b=Pv+KWy2DnRuDnT0kB4tfWnDSVzMO19Jf9+Ny4aErRE7IfhAfMTls3yPelrwfEGKQ
	gI2vs4uzYXR4PrmysEX4WpRgLhBAttFmEaZ578A67SveWOaM3L5qUi5hx8SnW/RIDGH
	Vgf11+BWx/c1fWtmEte6iRu4K1nvIggL92L75SAU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d0b94761-cd64c36a-05ea-45f0-a618-96bc05cd2f90-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5b71a7637e49fd5af804ca4d09839fe4e15f8f1c0ae6074760afec33fd739200
Date: Tue, 5 Jul 2022 23:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657064212
