Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AE8933E9
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 14:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647010284;
	h=To:Subject:From:Message-Id:Date;
	bh=VTwSWxcq5dYV0TQhW4yk5pdoGcnThuG3GLBE8vwfuRY=;
	b=UU6sysCHSNXgM3hq4/nOLF0lZpP5RfOExIAYJXbLg/pLeMLsVwQLvZKdrmtTycEQ
	A9amp6ImgChE2PgJuO0LfU+ynxMSPMH3F0V0wCT/AnRKyIZx0jq2xPvrBOBU6R+1aW0
	QVw76ofxK82Z3AOVcwXDBjWHa4+Ms+H8qbEB+XBI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647010284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VTwSWxcq5dYV0TQhW4yk5pdoGcnThuG3GLBE8vwfuRY=;
	b=bvpK3dLOtiCl0uaNKI+6ZAWe4GC2tLRrxbdHhJazrTiKxso0zMb4giDb5mrvToep
	J+JlsQvtAc2o6JaY2D3K+NfvY/jkU+3S30xh6ofgVax2RqL3i02n/90fYnYlSBtIjYL
	sD4hZQuRu4pYh/ECgvbZHty8JM35valeef3+fv3s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f797684d6-0bd97c68-5cff-423a-b2dc-f52619176b47-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c41a22bd2c623b0587ff39faa65d6281a2bd046bc7c68b38657274c23a62d9ef
Date: Fri, 11 Mar 2022 14:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647010284
