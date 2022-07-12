Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 099196AAC
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 21:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657660612;
	h=To:Subject:From:Message-Id:Date;
	bh=b+x7KxaYw7xCAtJ2uWzZSolTM9qH/KJ0zAJVquRKem8=;
	b=AHr87D2+YqzCU8II+OVmXQ76zV3YTMEAn2z/bcFM0dFkxSUeZTarvUk4uywIBRrR
	ASYSII9dvXHVMtvLcqkVquxocwsNLkxSpEtSN2s8kWz6EqrH10thjtNjCskCSz7WtTP
	H9jDKLvAEvrlsbFpfuwRj6SRgekPTG+ZCSzN+sJg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657660612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=b+x7KxaYw7xCAtJ2uWzZSolTM9qH/KJ0zAJVquRKem8=;
	b=Uw3eOfvDTjp6NE2WCDJUoQmYGI8+/A3WWN0LmeiOrqL2Jnien1fE9DU3t7/S4MA1
	bNm9e1dpOi/SAbDZv+Aq25GChCNpwHORC9OeZuDFmx4vspn8ezFKoEemW6lw8m9V6dl
	CINVLaHI93hKxkqvMaf8Icjs0MgATHYmvPI8MswQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f4459ed5-0ba67d59-4da3-43a3-8309-1dbb02b1a75d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd99c3697021bff1d13755f492ae5b464f03d53e2b9fa44dd5776cf160076a90
Date: Tue, 12 Jul 2022 21:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657660612
