Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 120AF3D63
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 20:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654028219;
	h=To:Subject:From:Message-Id:Date;
	bh=UQ5YRrChE65wEotz1b6FwSia9f6XOb97yuj0B2IMWnQ=;
	b=YRKrZBysdfHMWUZU8NFExQs1XFe95n5zNsF9NIOmkgizcUfk7ktC2B5fRgDgXc3u
	y/nads+pfmwQk1dmA8yOK9ypxdDgtQGDt4Ux3Kvtm5vLaOuk6Vi017hyJmBDvVECOcN
	ykrKZEVaWzBKq2gH3j+dw6bFV8BClQzf8K5S3Wt0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654028219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UQ5YRrChE65wEotz1b6FwSia9f6XOb97yuj0B2IMWnQ=;
	b=Hw72hNB0NMup7WXNRvsE0NInUP5m/LL/bopn5zBdrhr0cKH+XrxU6SU2BBGpfzA7
	opKw3BjaJVMH5MiWZ3udkbm+cwW5MIVMXBkLUTT8mfS9WltX45R+ytM2hLVUfzJcmd7
	Tn8V3wmxq78KqeQz/qLWlx6vgHa2U6tWypndbXgQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811bc3b376-bd042714-21be-4cf9-920c-fe60bbf38a2e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3647c168c4805969601155fa2c4955eb4b7be644ebfdc1011e721727c9d43875
Date: Tue, 31 May 2022 20:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654028219
