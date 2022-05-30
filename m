Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE9F717C1
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 03:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653882059;
	h=To:Subject:From:Message-Id:Date;
	bh=b9lAmQIWrkiN1Im59NeZrKhVpkExyBBENg4M69m/s2U=;
	b=Z2pvMOsPw1mDv3JF1jhNmj2FFG3OuXPpaJyDZYcydFsK7kjh6IrwZnO5yUFwbyqX
	wUGdMkJ9AsMdxaODEPca6n+CEUmJy17smgAXIOBnwTRAQW6U9gojt8bA/aottydKYRX
	Ha9yDdf1X2qsRAo8QFRriGjhre13wpkFWWB55P8c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653882059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=b9lAmQIWrkiN1Im59NeZrKhVpkExyBBENg4M69m/s2U=;
	b=TvEEFYBZOJHdZfQvQI+veLfrVGtp2HkerPnKxyz05ZwEwtX+pIICFdo0O9VRFdpQ
	S0qTRqtLZLmmJVA9DAQyGrpGjBCax6k0nc/d5KAcbyOSrhCJQzTxHgX4XBgXfgKuPlj
	o7yQ66ud+HBViJdR2O3hd4X1F+iDQnMy2glWxu9g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181130d7a22-cdb5ae74-00fb-42df-8901-239cd1bfadc0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7f4c2941f6f9f253dc1ed212abfcb7fe547677ebb828956abdf45ead99f9a148
Date: Mon, 30 May 2022 03:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653882059
