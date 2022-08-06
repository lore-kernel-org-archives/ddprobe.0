Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 668491103
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659804052;
	h=To:Subject:From:Message-Id:Date;
	bh=Ldw9J7iadlXySLahXAwHNX/SylOaGpschEG8eCMpKIE=;
	b=lHCg03Lb4YnxZMvbX3OdKpTS0qn5n1V3esFhpfgIQdWCUbPN7XPB6UDgw7WLj2dw
	/PT+zKajpNp9gTN8DaN4XUCbfeNHyZH48r03eCBWDKZlWVmhxmglKtFubFHJKICociQ
	TcFY5mSPYqmPDNssij3Y9lgclzBLA5nlatuQZtaY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659804052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ldw9J7iadlXySLahXAwHNX/SylOaGpschEG8eCMpKIE=;
	b=efrRQvmqt6M17Z+58bn1e4DDtUVr4p+wGxKKV3D7U6HgVl9fHu6DFDziHBuGU54O
	xeBUpSdQVmvkQTqwXCHL0ir6H4p5RS0QQt0BaUlJWeXuCFPD5AImaJCp9jQMeiMW3NM
	P/RCNASaQiVMkw+E8CnJy47xQOTv2g3Lm5n5g/74=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827407ec62-e975cf79-718e-4193-910f-2b52ebaf8e01-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8077ba071e225781b6916df42158b92464783f39c2aad0d364e0a159649bf13f
Date: Sat, 6 Aug 2022 16:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659804052
