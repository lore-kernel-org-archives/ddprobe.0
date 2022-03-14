Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61C911855
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 11:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647258384;
	h=To:Subject:From:Message-Id:Date;
	bh=uZtjT9H1yJE8U5N+NAG1b7OlnmKO9N9S64VxrpTKj30=;
	b=C2oG5/HVbHqKWZpX73kvFDh23o966pTPDNPN4qqqLYmkTts563GG0pJl7nUUhNXq
	m4Rl1tUy/CJyea5OHQf4X+kgRcxQkhlcokJHFz6RJjwHDx/46tJGjky3FDLX9KpsSD1
	cyRkbdlh764JCncZLjKh9TciUmUOKjo9XgyS17kY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647258384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uZtjT9H1yJE8U5N+NAG1b7OlnmKO9N9S64VxrpTKj30=;
	b=gJyIfCcsNJi2zTY7jrE5vyl2K+zzpVYj4h1Doz8ANCJGjxHU3HeONfnLBolJe2x0
	LU7oPREjc5Fm9L+qGUrFfZkyxHZcfJmJfd3T35SahiFX9nfmVT8msjgGmNPqDVGGUNv
	rfd8pu/RZbSaKFCEGaSXZjnHNXrwmDQCymy6/+1M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f88403964-c9522eef-9a53-4f1d-a010-ee313f22fd35-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3b55e78c256708fc9f563621997e12988fbcce4156784a63c24c954b1deb0fc9
Date: Mon, 14 Mar 2022 11:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647258384
