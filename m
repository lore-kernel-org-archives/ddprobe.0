Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 653193FE6
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 17:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647798684;
	h=To:Subject:From:Message-Id:Date;
	bh=mGRHgQvqF1nHA0DfrQY0zWbmubFgyxk4vnuqDKIz1ig=;
	b=fEUl1tC9pyzwIb9DB0wSakzGVQ6jz+iQF1GuF9Xf3JCDE8yBy/MuNaRMYyhVz9Kf
	Avk4elv9d8LAwuK4yJ8T7/0N3dLzK66atg+yk6rmrtlWLaKOi9/xy2Wub3TkiVJ5vlh
	Ulgl/bUfM13QcEWD5BryE4EmewdfeVq9aKNbXeJs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647798684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mGRHgQvqF1nHA0DfrQY0zWbmubFgyxk4vnuqDKIz1ig=;
	b=bUFlf+lUvikz4X4EupzCSFZDviZN2Hz8UnAFIJtg3XzRutdTpZlIQRbQom6uRxz+
	rVc/P+iCLe4NUG/AQHDESchPf+ojv+n4RcTTckxn+nC5dXF3ji1tT7nU8hFvBUG4I7b
	At2Y6qPtasLFFx+stsbE7+hEk4p2PZaojNpoAXM0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa8748c79-9c91ce7d-38f8-41f2-b495-01669c458d7d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2b99094b55402e0081b43760f6440ce0de8b2fae290831850ca1e5c283942034
Date: Sun, 20 Mar 2022 17:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647798684
