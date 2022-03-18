Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534972F2D
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 09:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647597084;
	h=To:Subject:From:Message-Id:Date;
	bh=mymj0RzKjqFSu5207EiRFAJBoXruZS2yzNawGZJoBNQ=;
	b=kBeyQL8o5jn0pD/Xhg+FmdpSnWfd9vn4AatYY1Q8bcALXMCBHPeINcGmTiPH6m3z
	us5RlJUmV2+rrmaqn5zUXcO8MfcsBscmuxE/H16BNiXyuciIGCBmWtteGozbvf4AOxO
	bYymzdBIt+9JiBZC5naAADqExOY50P3DUyIz8HAk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647597084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mymj0RzKjqFSu5207EiRFAJBoXruZS2yzNawGZJoBNQ=;
	b=U5boGF8wEg67ix2dNskicHesCnA/GdaJGNmLNhEqgxVhXFiy+plGLimLSJ+sEj2G
	cC/OyM/qu29ImEpogOOGCYStzQcKehKPgQn+jdw7RbH4uAL1pKkDAFzLnYLFW5xnEjE
	JlaS/eL4hgfGUhGgRfN2lQrfq3W8Hertc5tPwv28=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9c706026-77e7ee9d-bb97-4788-bf32-6a2a777ccb1d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 071c5068c08d52a8acacdf2ce3a960d7ecd1510198fe7470406c451b344da4e5
Date: Fri, 18 Mar 2022 09:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647597084
