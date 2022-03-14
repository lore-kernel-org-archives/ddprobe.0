Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CCAEA40
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 02:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647225384;
	h=To:Subject:From:Message-Id:Date;
	bh=uNidVkjRwoE14dlXV0iU79Rs+bZrb6cbri3A1XXyqOQ=;
	b=dwBs/x4RXiLvGrbkkwWIqvm/5ZR+fMtwhDiSPyGtm5gPrd0hIm/Gli6IYbv7/1o8
	g2UO43kNRCBSAs1ViCIfnldW9Chc4aSqMDna/raiSsEih1Eq9YhMQ817Xwcoq5Qrb3K
	Ub8/G4sgTn3OWEjsMWKH6y7Vhy7XUVa7aW04cOEE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647225384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uNidVkjRwoE14dlXV0iU79Rs+bZrb6cbri3A1XXyqOQ=;
	b=V/SnqNgvK0/QDZzGIfgKFU9VchU2zOE7YGFvHTwlP/myFv1w0J0QhsXDR0SoSg1A
	rSgxpLJ2bBnGYmMP668I2uuLObMrb3lXW5Ag1YwZ9w/ydP9JNOGttwmaSr98wioGChn
	BO8UNtZrBODMvv1OWnu9LCeQa7Uvu0FaUM6SzdzY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8648af12-8eb0bfa8-8991-4c9a-998f-df4474db3da7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8f36b88ae349800665e202bad97d642649a120ba85ce66e37520801344eb636a
Date: Mon, 14 Mar 2022 02:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647225384
