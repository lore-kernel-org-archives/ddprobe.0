Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A30653D88
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660824653;
	h=To:Subject:From:Message-Id:Date;
	bh=iTd/Zmv+by4m93ETHSLSkbKfddaFM5XJ40rsJsoocUM=;
	b=cAxXuP4vIXHgrvd57H4EKGPvklkgScP2I9c8if1Oa+K9d4S92/oSPu0EwOnw3ZIG
	lFA5gSBAuax6jkjaE7Oer9j/RawsyqrvmXe4tqdznbIV5GWHdgm3yA738AwGsbefKZT
	LZNfj7v8lm6YEkVI55Bf9QEgptltyD/QcRyAo0XY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660824653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iTd/Zmv+by4m93ETHSLSkbKfddaFM5XJ40rsJsoocUM=;
	b=kFxeqeiBk08N2wANmJDL8ypaJKNSc9y35tIRSo3AiY6nlcRGhwNRMorS9dpHFq2Z
	SvGKErx6cIkTgQJ+3IxKvhj3bFNBAJN9yiGI+a+QD60GQWctW4GC2hogPTHjYJz973B
	Q9d5ajeEejguUMANCtBHeyEXzz6ks56kbifxhdWw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b0dd0b39-e7cc7700-52e5-4d09-a794-6ee3a082bf02-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e3a2e3adfe95e36a9811a8cecc36d5d11d1bcf256273decdc29bc047cf7e528c
Date: Thu, 18 Aug 2022 12:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660824652
