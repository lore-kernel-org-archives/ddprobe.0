Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9172933D1
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 11:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647861084;
	h=To:Subject:From:Message-Id:Date;
	bh=vm3EUx3Anl59QrcXcWAcnivTlKD6w6FGulOCYVLp9hM=;
	b=ac9aMBP5m6DDxGYnn91RpFERknkjsQxQv1TgkLj6MjZ+ZVQHwhagzeBFH+o79UOu
	pWwIFBqROZAh5DW7eXFhAxBjivHbpAFcoaN0KcxGqZGaKH04tieN1xdRgWS9mqADPo3
	JTFXgquIblFboQqb8wFhtDnbTCaBv9dKID6f3Gyg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647861084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vm3EUx3Anl59QrcXcWAcnivTlKD6w6FGulOCYVLp9hM=;
	b=haUPkzuzAqhlWwfDzzJUnuG1hmkrATuYkON5sD5xPwiD/pnvRMwo+nFmTD8x1wit
	c3YyKCVTyICe8q1P0sWT5pAM3eKN/WecvgNWrJmcapJ0WYMN/+j/oQywrh/eR3xTswj
	C5iMHeqMLnqTgrhYuhGDuFEezFLWkiQRL2nRX8Hg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fac2cb27c-2b179592-c438-456c-a3a6-ef2e1c1f5bc8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bac765c6a18368aedfe13038d1d6b6b170493eccb476c8a5ca5707b2bf6d6a08
Date: Mon, 21 Mar 2022 11:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647861084
