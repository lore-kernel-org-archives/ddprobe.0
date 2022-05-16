Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05DE8EA9
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 09:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652692019;
	h=To:Subject:From:Message-Id:Date;
	bh=UoegjUyp8plN+VHLPN99sUKLO2+gpn5sNVHb7j2oaAM=;
	b=WZG9KIDlIzy5hHhEIoj2uWE4CPOwMMAGaxyM902o8XEmADrW9lpOBKL0vwsEsh7V
	Q/hCESCl6nwVX//Ni4xjeBekdrzJInxLomLwn5vuBMdjAhb0S2AQHwj6kCslGxOk5fa
	j7fpPALKaWMFjM1SESES3VSovQHRdCfsY2othDfU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652692019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UoegjUyp8plN+VHLPN99sUKLO2+gpn5sNVHb7j2oaAM=;
	b=dji7adTbOpxB5aE1SgRdb9lpIvAzsJEneA0S4ygvoIDbyCiDVbES4G0Iu1Meezxi
	K4od8w7ximJKcidT981N5+owjpjAZK9qRVXUN/StpF2R02oCx7ZRjuUMX+3XswQF0as
	Szt28uC9YI4X860JQYUS7PkvisUNpwgbLzDvMyD8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cc1ee883-2e52dbed-a188-49e6-b7c8-17a1c8a55adf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 949ac38270076d4c891d98131cf5bdc78ba516f46cfdf1f60ee08d69e23df57c
Date: Mon, 16 May 2022 09:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652692019
