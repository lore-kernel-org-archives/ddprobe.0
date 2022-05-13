Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D4A7A
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 18:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652466959;
	h=To:Subject:From:Message-Id:Date;
	bh=s8qZVtKtABiAVtT6ly/cKOeFeks1k1lp/MBbF8/sd6Y=;
	b=b8VT7E0brpmbtHGUVisH5SgWi85bpsfwddmpmYNNehxFFboNJ0ENt/c/cjrYjavE
	9Qyl2P6B7knzZCFtRwMA72KRhe3F3cg+cN1FS33qDONpjfrdiddhm8Xx4FY/EhcCamM
	fZP63/RLaC8nHufAOOcc7LA1NhNbrpG4sks460XM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652466959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s8qZVtKtABiAVtT6ly/cKOeFeks1k1lp/MBbF8/sd6Y=;
	b=WndKKfpyVcWiisit8JVpdHXrWVW+quqx4E977qGRRvrw2yae03+jl3UygVLCShWG
	z8oPWOHZh84Z+SnuKLjyoThdNRZd6rDMePxESUC4CVgm+5lngrYKr42Z+oH9zvt1RpO
	V9rI7y1fZ8ZipLOtTrLcPOEf8RWbXaGUkRyboovg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180beb4c419-d0dc4b9b-2fdc-4183-ab1a-8a30cfdbba15-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 62d7c0ccc16680dd723361fb7feb670d7e7f7c79b76d30079d6a6825c453bd2f
Date: Fri, 13 May 2022 18:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652466959
