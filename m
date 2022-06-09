Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65882210B
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 09:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654768619;
	h=To:Subject:From:Message-Id:Date;
	bh=MMv/qnh+NHj12e2s8tZgyZA1ZKwDRiJw3EJT7L/YF9A=;
	b=cOHuHy3nz+pv5wb0ZZuTiC2QUAu8qR4kSxIUWaS0CsB7N6hOV0Xk12SMQEGDpAOX
	ww4Sq6KRA7Ni/El9xwI//Odw3AmtKwnYLVslgIEn/N2oDTGJZ4u5awQs8ERZeGkVnxS
	hFcxrpng4WNP7gAo1cPoZGo7jhLVhBrw/sQuNfHA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654768619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MMv/qnh+NHj12e2s8tZgyZA1ZKwDRiJw3EJT7L/YF9A=;
	b=UwKPp7spsOYGy9EszGs0t83cNqPY/M33aHi5Z3WfgKtzAXBmKtPTS3D8knZdvj+B
	uA5A32EP236I0iS7NECwoZgpCl7r2TTuf9UDCO0rdI+GrW5kGHEeujlXEiIxNJ1Ls6x
	iLaheJxpfuhZKuQWpwDblkGq2ipIECmWiSjvBiKs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018147e54ee3-c9d92a07-1370-42e0-8a6f-7bee4a98cc0d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 701ff564881d9175d245b9d569337ca775ce302ef31c7f411e8572a49af303ba
Date: Thu, 9 Jun 2022 09:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654768619
