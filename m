Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07FCD7E
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 23:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653087779;
	h=To:Subject:From:Message-Id:Date;
	bh=Rk6trlrasVQMmszWFJe0rk+GoAx/Iu1NnqOh5EkCnQY=;
	b=a1Or2HGXLnGhspTgdJGIASRnKnFqV/iNzNI12S2jObqnNjEwb/zTIAlyx36DaDIx
	9C6oEC7Bzt2Y6ZGqod1Wlg00ub9Emu93Rv9arpYfdcpXF9F6Ci9r9+0PM08v70iGKbl
	YNieUg/K1Li7vkwCordKjEtU7Hq3Pwo+LJzq9xos=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653087779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Rk6trlrasVQMmszWFJe0rk+GoAx/Iu1NnqOh5EkCnQY=;
	b=jTOvqdPdWvFWvCiJtGS7sgatcDG+ROCHII5ax8230aifeOQDiRugeHkOXIyMl4Zy
	pFbJ69DLg3PLMLXlRF0NAuO2ZftpFX8zrIQymWV5uH0UegeQGX02FiAtb5COU68PmV6
	w1lsnbisPgrQzRf5Ib+nfrFitAljOElDPrltpmAw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e3b5b9ed-e43b89ad-8d61-41dc-94bd-96b5e62ef326-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ffffb987c585733780f90de7dc0a9c4f82af4e40f4eee64ecd1c72ca7bc6a3f3
Date: Fri, 20 May 2022 23:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653087779
