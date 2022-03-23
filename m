Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66448ECD
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 03:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648006284;
	h=To:Subject:From:Message-Id:Date;
	bh=VIm0sS4wRWeovJixjjrOE8pGjgLwa4Bnv0fEXOThHWM=;
	b=CEQnNCoHIhUdHgtecI11Yuhoy3SIiTQRPAsAhCJ3dG70dlN6StxqVt6y7XOU8iyj
	D1U19ltM1FOLskHunZR2WOpCDXkTXoEiTKPRB7L+iMg9kqk8IWwIBDS5KiaN5qvYoVl
	SyxwCp1jNX438ZS+XsuVkSRkLdGEIejzoFfQ9A1A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648006284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VIm0sS4wRWeovJixjjrOE8pGjgLwa4Bnv0fEXOThHWM=;
	b=OOxmvV3z3Bz53rgyKhbFXxWo4hGgn3pTPFbrGqDZ3qD96Ig9JMmy9BbHqcX8xkP+
	WhTvpEi5XWbqkWNKuFj7My5DOJBgpyHLmjdjI0Esda2nKUVtXIYUaHSXbV4zleEdSF5
	6BzRnf1h7Ge7G4HvDwj+OHCyiPkAbkHNo6/uf4SY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb4d445b5-b86b8e03-08d7-48f7-a7c1-ea89515c7473-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 004877d69c56c6af9a45717f3c088171f10d70910517f0ca5e2ad05fbae36f9c
Date: Wed, 23 Mar 2022 03:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648006284
