Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F45AC64
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 12:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647951984;
	h=To:Subject:From:Message-Id:Date;
	bh=bp4CbVBRMSRsBheRIAMx4tnnTHUbrZWGUQi4isa0gQQ=;
	b=VSu53gTRNebndWxgVtXo8iLoPK8QTdEdAIPQxTc1BdWkH18EnrWnnMdro0Ijx4/I
	PGR6tF2xpQgz6ABE5vhNsNz3gpysupPu1HwWh+88WAgr1HVZO/5qoSwElbkoBzCEhq3
	wf+bTW/+nqigTaJRCOc3UH2HUtzteWRP7BdUD5xw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647951984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bp4CbVBRMSRsBheRIAMx4tnnTHUbrZWGUQi4isa0gQQ=;
	b=eODtOLJGJXR/1RtzEW3QEkquE0zPAKpQvaVb+cKOA3l4jEe22RIPgnhXdFXik1iJ
	aw1bqwN8OtEXNCN9iLyIvIIKf6PxZoNuaGg2gMm5oT+R8Kjtf1GdJNYqN3fUskGygNa
	954PgLEkcqq0AofvGPeD5TnZGx6yO6z5pyXR0ar0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb197b860-0df536c0-1265-41ae-a600-b87a21617a82-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d1d2fa1377c1890727bdeb30c6c136e530e33512a449a59835249e7f19fbbd57
Date: Tue, 22 Mar 2022 12:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647951984
