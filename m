Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DB2D7B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 18:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655664479;
	h=To:Subject:From:Message-Id:Date;
	bh=cNfdxPXHFtK4CemftEun8DeOrOyd4Q8qOaNoszGbPVU=;
	b=IcLS+sAYnn/lLQjs5172TQ58UuhBQ/KwVe+VNFP/ZgQhlnZKoe+0A47fUehF9BFe
	mapy/cmV5IyAwZ3xw1q1+bbUW1EqTtPk0B+Cb19LkpaJ7DcoVbuj1jvnaCnxttH/i0T
	XKW7DaH/8+CIqvdCnolxj1fw+MW13IUtaPS244J4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655664479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cNfdxPXHFtK4CemftEun8DeOrOyd4Q8qOaNoszGbPVU=;
	b=dmaBBikUFXcWztGbab6V80Ehi9DKmSLSQXfGoxjTXHOXiliFqmp1eBB20EHUkrs9
	r/VbxUET7bOItLrLzOeEVwaYdViRmrV21rqN+1JGmigBMCtAxkFEAdl8R0hxhqer+V5
	RG2rkmSsxIUjntR+y2KPS1O70VfeMV13/rCkr4yE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817d4b0c31-c5a107e9-b3dd-4f35-aee1-2103f034a6a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1dbd64d7b9d8fc3bd018b01acc94b384a6bba99ee383c7cea521e9a06c9a4643
Date: Sun, 19 Jun 2022 18:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655664479
