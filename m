Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E5157E
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 22:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654294619;
	h=To:Subject:From:Message-Id:Date;
	bh=T2r+8pe41kWQwQs0BBxA43VQF+NPxh3ekYCGm4spEic=;
	b=aqf6b+tYtZ1NGsFxB/FliRvpT3nFjT9Moa2llmOxD4nhr06e2UpFIs5HsjYlStju
	CeLu2us618mhrq+ybIKPX9nVyCuxUnVYGhpnVnj8iRwfB0CeiudUF/sEQQ7pvxQj3eK
	+qq7+9M/fQsd8R2mu57gmomgcX8fRN/QBkHlqWos=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654294619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T2r+8pe41kWQwQs0BBxA43VQF+NPxh3ekYCGm4spEic=;
	b=D1ce2VjLRpOt0MT5kOEhu0HnYduapBOTHIhI+1xekBOPo9OCE436EVDLBYDjuqIQ
	/V33QlbJw57vazmXC+POHdX3jXAvsPOOlmWjUA6gZjxYryUOpstrikGAKotCHic+RdT
	D/2ilYEwCzUt1kAFo0C2+M/tC0WBVzor69T7LLSY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812ba4a522-bb2b636d-1c2a-4ee1-8941-70151d2c046d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d926964e9160118d142fddb0a96216be33ec2fab7b061e186ffc95be833c3d83
Date: Fri, 3 Jun 2022 22:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654294619
