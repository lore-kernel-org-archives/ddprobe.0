Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10AB37A
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 20:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650056338;
	h=To:Subject:From:Message-Id:Date;
	bh=ntCsCIGg3Jl6+h/OlIq/eT+0+UTyduQBRQGJbsgaM0o=;
	b=SQgFtj63+0Xq27tN4SfFnDofH+wlXE8TER1vxmQE1JhBxyvBxvNhIEZYIeMHq8jw
	GSJzwB1p9Ia1+PAwJegTKVqW6ieWWk5ODwquX5TAjDjCrKqa1ILYZJbUJMWYzrc7tsq
	ZlxXHcsdONFROmhU2rdF1EPB6IZIer0Wmlr/xP/E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650056338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ntCsCIGg3Jl6+h/OlIq/eT+0+UTyduQBRQGJbsgaM0o=;
	b=MasMbCBIiSeCHVzt+EouMKgQNd73Z0swamgxLP0WpxWEq3KAnxA/XS4b1iQ31DG2
	Mnf513qDyjNWq4oPGdBTFbHduIj6aDdLzsBrTPRs3dcp14lPY3Nfb52L/t3hKas8Dis
	HVyONgKbHi2sWEasI2wmJNk7EYthw17GszY0VlD8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802f059b7f-65c818ce-50fc-4e7b-8e03-b0775334b8b5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 191ed5789afc1da9f4b594d6150f6a89852334d23be058935be4710a0b8ec569
Date: Fri, 15 Apr 2022 20:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650056338
