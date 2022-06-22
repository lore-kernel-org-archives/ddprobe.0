Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06B3F137A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 11:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655897939;
	h=To:Subject:From:Message-Id:Date;
	bh=XRDq2wiyBw4KFIYs3kig6nO1n/qRHK2Z6cZaM+PnKYs=;
	b=PlKFgGao6hzoRPaIiayTxKdSikw0EtatR1OSvEHXpEmapjd705HKMovPgCABEaAV
	ZaKwhgGquZcamiAETLOiyc9phLTSFdcX98lWvpyJwntoT6p6GGsNi4BCyMuELHghs0h
	7aebdS6XFCyYHnUJxbhBeM9Fa2vPXHh3+NnOkZMM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655897939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XRDq2wiyBw4KFIYs3kig6nO1n/qRHK2Z6cZaM+PnKYs=;
	b=bKtA3NqeZTycqU304Z4Lv3BC7ODi7wj93CYElDsdYmJTeQS0fvFweemeZ9GIBNFP
	cZUm8Qwax7/3YFBh6Qq0u67Iky2+qdGjoPnhUoTeWTQF9cJvvRUYdQ1KLvGjETAkWyU
	8UeawJSuBK5H11iftPK0lw7CAjaR6OeazJOv9ABY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818b355d19-44d72f60-adb2-4769-9dd9-0991fc0d9579-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b289c5d136c7ca6ae089bc836d16202c80bd7c644f8f8c323ec40befa3196b86
Date: Wed, 22 Jun 2022 11:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655897939
